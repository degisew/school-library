class Option
  def options(option, app)
    case option
    when 1
      app.list_of_all_books
    when 2
      app.list_of_all_people
    when 3
      create_person(app)
    when 4
    when 5
      app.create_rental
    when 6
      app.list_of_all_rentals
    end
  end
end
