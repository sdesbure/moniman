require 'rails_helper'
require_relative '../../../app/unit_value/operation/create'

RSpec.describe UnitValue::Create do
  it 'is a success with a name and a valid ISIN' do
    result = described_class.(unit_value:
      { name: 'SGL', isin: 'FR0010286013' })
    expect(result.success?).to be_truthy
  end

  context 'without a name' do
    let(:result) { described_class.(unit_value: { isin: 'FR0010286013' }) }

    it 'is a failure' do
      expect(result.failure?).to be_truthy
    end

    it 'has the right error message' do
      expect(result['result.contract.default'].errors.messages).to eq(
        name: [I18n.t('errors.filled?')]
      )
    end
  end

  context 'with a bad ISIN' do
    let(:result) do
      described_class.(unit_value: { name: 'SGL', isin: 'F0010286013F' })
    end

    it 'is a failure' do
      expect(result.failure?).to be_truthy
    end

    it 'has the right error message' do
      expect(result['result.contract.default'].errors.messages).to eq(
        isin: [I18n.t('errors.format?')]
      )
    end
  end
end
