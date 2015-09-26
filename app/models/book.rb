class Book < ActiveRecord::Base
  has_many :accountings
  has_many :commodities, through: :accountings
end
