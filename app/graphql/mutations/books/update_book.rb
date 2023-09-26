module Mutations
  module Books
    class UpdateBook < ::Mutations::BaseMutation
      argument :id, Integer, required: true
      argument :title, String, required: true
      argument :author, String, required: true
      argument :genre, String, required: false
      argument :resume, String, required: false

      type Types::BookType

      def resolve(id:, **attributes)
        Book.find(id).tap do |book|
          book.update!(attributes)
        end
      end

    end
  end
end
