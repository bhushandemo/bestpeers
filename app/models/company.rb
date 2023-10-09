class Company < ApplicationRecord
  belongs_to :car
  has_many :branches
end
