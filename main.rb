require_relative './app'
require_relative './menu'

def main
  menu = Menu.new
  app = App.new
  loop do
    puts menu.menu_list
    option = gets.chomp.to_i
    menu_executer(option, app)
  end
end

def options(option, app)
  case option
  when 1
    app.list_of_all_books
  when 2
    app.list_of_all_people
  when 3
    create_person(app)
  when 4
    puts app.create_book
  when 5
    app.create_rental
  when 6
    app.list_of_all_rentals
  end
end

def menu_executer(option, app)
  if option == 7
    puts 'Thank you for using this app!'
    exit
  else
    options(option, app)

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
