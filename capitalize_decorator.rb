require_relative './BaseDecorator'
class CapitalizeDecorator < BaseDecorator
  def correct_name
    name = super()
    name.capitalize
  end
end
