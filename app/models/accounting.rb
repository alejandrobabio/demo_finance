class Accounting < ActiveRecord::Base
  belongs_to :commodity
  belongs_to :book

  validates :commodity, presence: true
  validates :book, presence: true

  def to_s
    "#{book} - #{commodity}"
  end
end
