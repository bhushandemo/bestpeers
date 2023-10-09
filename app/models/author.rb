class Author < ApplicationRecord
  has_many :"created_books", class_name: "Book", foreign_key: :author_id
end
