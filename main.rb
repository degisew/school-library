require_relative './app'

def menu
  puts 'Welcome to School Library app'
  puts 'Select an option by entering a number: '
  puts '1) List all books'
  puts '2) List all people'
  puts '3) Create a person'
  puts '4) Create a book'
  puts '5) Create a rental'
  puts '6) List all rentals for a given person id'
  puts '7) Exit'
end

def main
  print 'welcome!'
  app = App.new
  loop do
    puts menu
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
