module Queries::BookQuery

  def books
    Book.all
  end

  def book(id:)
    Book.find(id)
  end

end
