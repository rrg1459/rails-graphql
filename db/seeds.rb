# require 'populator'
# require 'faker'

20.times do |book|
  book = Book.new
  book.title = Faker::Book.title
  book.author = Faker::Book.author
  book.genre = Faker::Book.genre
  book.resume = Faker::Lorem.sentence
  book.save
end

