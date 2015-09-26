class Book < ActiveRecord::Base
  has_many :accountings
  has_many :commodities, through: :accountings

  def to_s
    name
  end
end
