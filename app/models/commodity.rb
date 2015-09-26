class Commodity < ActiveRecord::Base
  has_many :accountings
end
