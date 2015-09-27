class Company < ActiveRecord::Base
  has_many :accountings
  has_many :books, through: :accountings
  has_many :commodites, through: :accountings

  def to_s
    name
  end
end
