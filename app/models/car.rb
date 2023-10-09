class Car < ApplicationRecord
  has_many :companies
  has_many :reviews
end
