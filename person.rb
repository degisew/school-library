class Person
def  initialize(name="unknown", age, parent_permision=true)
@id = Random.rand(1..10)
@name = name
@age = age
end

def can_use_services?
if is_of_age? || @parent_permission
      true
    else
      false
    end
end

attr_reader :id

end

attr_accessor  :name

end

attr_accessor  :age

end

private 
def is_of_age?
@age >= 18  
end

end
