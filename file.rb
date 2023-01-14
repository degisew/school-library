require 'json'

module BookData
  def read_book
    if File.exist?('./files/books_data.json')
      File.open('./files/books_data.json', 'r') do |file|
        all_books = file.read
        JSON.parse(all_books)
      end
    else
      File.write('./files/books_data.json', [])
    end
  end

  def write_book(newbook)
    File.write('./files/books_data.json', JSON.pretty_generate(newbook))
  end
end

module PeopleData
  def read_people
    if File.exist?('./files/peoples_data.json')
      File.open('./files/peoples_data.json', 'r') do |file|
        all_people = file.read
        JSON.parse(all_people)
      end
    else
      File.write('./files/peoples_data.json', [])
    end
  end

  def write_people(newperson)
    File.write('./files/peoples_data.json', JSON.pretty_generate(newperson))
  end
end

module RentalData
  def read_rental
    if File.exist?('./files/rentals_data.json')
      File.open('./files/rentals_data.json', 'r') do |file|
        all_rentals = file.read
        JSON.parse(all_rentals)
      end
    else
      File.write('./files/rentals_data.json', [])
    end
  end

  def write_rental(newrental)
    File.write('./files/rentals_data.json', JSON.pretty_generate(newrental))
  end
end
