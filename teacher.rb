require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', parent_permision: true)
    @specialization = specialization
    super(age, name, parent_permision: parent_permision)
  end

  def can_use_services?
    true
  end
end
