# Operation that Create a new UnitValue
# One method only that's 'call'
class UnitValue::Create < Trailblazer::Operation
  step Model(UnitValue, :new)
  step Contract::Build(constant: UnitValue::Contract::Create)
  step Contract::Validate(key: :unit_value)
  step Contract::Persist()
end
