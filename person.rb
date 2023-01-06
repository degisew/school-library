require_relative './nameable'

class Person < NameAble
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permision: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permision
    @rentals = []
    super()
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.Person = self
  end

  def can_use_services?
    if of_age? || @parent_permision
      true
    else
      false
    end
  end

  private

  def of_age?
    @age >= 18
  end
end
