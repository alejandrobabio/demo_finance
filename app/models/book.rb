class Book < ActiveRecord::Base
  has_many :accountings
  has_many :book_commodities
  has_many :commodities, through: :book_commodities

  def to_s
    name
  end
end
