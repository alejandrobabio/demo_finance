class Accounting < ActiveRecord::Base
  belongs_to :commodity
  belongs_to :book

  def to_s
    "#{book} - #{commodity}"
  end
end
