class Commodity < ActiveRecord::Base
  has_many :accountings
  has_many :companies, through: :accountings
  has_many :books, through: :accountings

  def to_s
    name
  end
end
