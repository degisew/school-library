require 'json'

module BookData
 @@file_path = 'files/books_data.json'
    def read_book
        if File.exist?(@@file_path)
    File.open(@@file_path, 'r') do |file|
        all_books = file.read
    end
else
    File.open(@@file_path)
end
    end

    def write_book(newbook)
File.open(@@file_path, 'a') do |file|
add_book = file.write("\n #{newbook}")
    end
end
end


module PeopleData
    @@file_path = 'files/peoples_data.json'
    def read_people
        if File.exist?(@@file_path)
            File.open(@@file_path, 'r') do |file|
                all_people = file.read
                end
            else 
                File.open(@@file_path)
            end
    end

    def write_people(newperson)
        File.open(@@file_path, 'a') do |file|
            add_people = file.write("\n #{newperson}")
        end
    end
end


module RentalData
 @@file_path = 'files/rentals_data.json'
    def read_rental
        if File.exist?(@@file_path)
            File.open(@@file_path, 'r') do |file|
                all_rentals = file.read
                end
            else 
                File.open(@@file_path)
            end
    end

    def write_rental(newrental)
        File.open(@@file_path, 'a') do |file|
            add_rentals = file.write("\n #{newrental}")
        end
    end
end