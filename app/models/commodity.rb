class Commodity < ActiveRecord::Base
  has_many :accountings

  def to_s
    name
  end
end
