class Book < ApplicationRecord
  belongs_to :"author_name", class_name: "Author", foreign_key: :author_id
end
