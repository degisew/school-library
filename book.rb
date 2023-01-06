class Book
  attr_accessor :author, :title
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
