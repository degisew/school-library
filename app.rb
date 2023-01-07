require_relative './book'
require_relative './student'
require_relative './classroom'
require_relative './teacher'
require_relative './rental'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def list_of_all_books
    if @books.empty?
      puts 'You have no recorded books yet!'
    else
      @books.each do |book|
        puts "Title: \"#{book.title}\", Author: #{book.author}"
      end
      puts
    end
  end

  def list_of_all_people
    if @persons.empty?
      puts 'You have no recorded people yet!'
    else
      @persons.each do |person|
        category = person.is_a?(Student) ? '[Student]' : '[Teacher]'
        puts "#{category} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
      puts
    end
  end

  def create_book
    print 'Enter Book Title: '
    title = gets.chomp
    print 'Enter Book Author: '
    author = gets.chomp
    book = Book.new(title, author)
    # push new book to the end of the array
    @books << book
    puts 'Book is registered!'
  end

  def create_student
    print 'Enter Age: '
    age = gets.chomp
    print 'Enter Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]:'
    permission = gets.chomp
    room = ClassRoom.new('A')
    student = Student.new(room, age, name, parent_permission: permission)
    # push new book to the end of the array
    @persons << student
    puts 'Registration success!'
  end

  def create_teacher
    print 'Enter Age: '
    age = gets.chomp
    print 'Enter Name: '
    name = gets.chomp
    print 'Enter Specialization: '
    special = gets.chomp
    teacher = Teacher.new(special, age, name)
    # push new book to the end of the array
    @persons << teacher
    puts 'Registration success!'
  end

  def create_rental()
    if @books.empty?
      puts 'Sorry there are no books!'
    elsif @persons.empty?
      puts 'Sorry there are no person!'
    else
      book = book_rental
      person = person_rental
      print 'Date: '
      date = gets.chomp
      rental = Rental.new(date, person, book)
      @rentals << rental
      puts 'Rental created successfully'
      puts
    end
  end

  def person_rental(msg = '')
    puts "#{msg} "
    puts 'Select a person from the following list by number'
    @persons.each_with_index do |person, index|
      title = person.is_a?(Student) ? '[Student]' : '[Teacher]'
      puts "#{index}) #{title} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_option = gets.chomp.to_i
    if person_option >= @books.size || person_option.negative?
      person_rental("Please select from 0 to #{@persons.size - 1}")
    end
    @persons[person_option]
  end

  def book_rental(msg = '')
    puts "#{msg} "
    puts 'Select a books from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_option = gets.chomp.to_i
    book_rental("Please select from 0 to #{@persons.size - 1}") if book_option >= @books.size || book_option.negative?
    @books[book_option]
  end

  def list_of_all_rentals
    print 'ID of person: '
    id = gets.chomp.to_i
    print 'No ' if @rentals.empty?
    print 'Rentals: '
    puts
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.person.name}" if rental.person.id.eql? id
    end
    puts
  end
end
