class Accounting < ActiveRecord::Base
  belongs_to :commodity
  belongs_to :book
end
