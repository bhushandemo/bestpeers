module Myconcern
  extend ActiveSupport::Concern

  validates :vname, max:10
end
