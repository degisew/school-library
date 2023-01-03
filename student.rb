require_relative './person'

class student < Person
def initialize(classroom)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
end

def play_hooky
"¯\(ツ)/¯"
end
end