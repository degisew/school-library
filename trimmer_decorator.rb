class TrimmerDecorator
  def correct_name
    super() unless name.size > 10
  end
end
