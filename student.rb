require_relative './person'
class Student < Person
  attr_reader :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permision: true)
    @classroom = classroom
    super(age, name, parent_permision: parent_permision)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/'
  end
end
