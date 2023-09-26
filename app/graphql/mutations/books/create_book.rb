module Mutations
  module Books
    class CreateBook < ::Mutations::BaseMutation
      argument :title, String, required: true
      argument :author, String, required: true
      argument :genre, String, required: false
      argument :resume, String, required: false

      type Types::BookType

      def resolve(**attributes)
        Book.create!(attributes)
      end
    end
  end
end
