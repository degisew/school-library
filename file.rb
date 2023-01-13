require 'json'

module BookData
  @@file_path = './files/books_data.json'
  def read_book
    if File.exist?(@@file_path)
      File.open(@@file_path, 'r') do |file|
        all_books = file.read
        JSON.parse(all_books)
      end
    else
      File.open(@@file_path)
    end
  end

  def write_book(newbook)
    File.write(@@file_path, JSON.pretty_generate(newbook))
  end
end

module PeopleData
  @@file_path = './files/peoples_data.json'
  def read_people
    if File.exist?(@@file_path)
      File.open(@@file_path, 'r') do |file|
        all_people = file.read
        JSON.parse(all_people)
      end
    else
      File.open(@@file_path)
    end
  end

  def write_people(newperson)
    File.write(@@file_path, JSON.pretty_generate(newperson))
  end
end

module RentalData
  @@file_path = './files/rentals_data.json'
  def read_rental
    if File.exist?(@@file_path)
      File.open(@@file_path, 'r') do |file|
        all_rentals = file.read
        JSON.parse(all_rentals)
      end
    else
      File.open(@@file_path)
    end
  end

  def write_rental(newrental)
    File.write(@@file_path, JSON.pretty_generate(newrental))
  end
end
