class Person
  def initialize(name = 'unknown', age, parent_permision: true)
    @id = Random.rand(1..10)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    if is_of_age? || @parent_permission
      true
    else
      false
    end
  end

  attr_reader :id
  attr_accessor :name, age

  private

  def of_age?
    @age >= 18
  end
end
