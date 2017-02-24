require 'rails_helper'
require_relative '../../../app/unit_value/operation/create'

RSpec.describe UnitValue::Create do
  it 'is a success with a name and a valid ISIN' do
    result = UnitValue::Create.(unit_value:
      { name: 'SGL', isin: 'FR0010286013' })
    expect(result.success?).to be_truthy
  end

  it 'is a failure without name' do
    result = UnitValue::Create.(unit_value: { isin: 'FR0010286013' })
    expect(result.failure?).to be_truthy
    expect(result['result.contract.default'].errors.messages).to eq(
      name: [I18n.t('errors.filled?')]
    )
  end

  it 'is a failure with bad isin' do
    result = UnitValue::Create.(unit_value:
      { name: 'SGL', isin: 'F0010286013F' })
    expect(result.failure?).to be_truthy
    expect(result['result.contract.default'].errors.messages).to eq(
      isin: [I18n.t('errors.format?')]
    )
  end
end
