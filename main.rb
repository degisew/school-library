require_relative './app'
require_relative './menu'
require_relative './menu_executer'

def main
  menu = Menu.new
  app = App.new
  executer = MenuExecuter.new
  loop do
    puts menu.menu_list
    option = gets.chomp.to_i
    executer.menu_executer(option, app)
  end
end

def create_person(app)
  print 'Do you wants to create a studnet (1) or a teacher (2)? [Input the number] '
  option = gets.chomp
  case option
  when '1'
    app.create_student
  when '2'
    app.create_teacher
  end
end
main
