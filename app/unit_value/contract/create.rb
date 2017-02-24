require 'reform'
require 'reform/form/dry'

# Contract for UnitValue creation
class UnitValue::Contract::Create < Reform::Form
  include Dry

  property :name
  property :isin
  property :fund_url
  property :category
  property :index
  property :investment_style

  validation do
    configure { config.messages = :i18n }
    required(:name).filled
    required(:isin).filled(format?: /[A-Z][A-Z][0-9]{9}/)
  end
end
