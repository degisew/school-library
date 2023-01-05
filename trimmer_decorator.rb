class TrimmerDecorator
  def correct_name
    name = super()
    name unless name.size > 10
  end
end
