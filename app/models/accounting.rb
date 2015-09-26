class Accounting < ActiveRecord::Base
  belongs_to :commodity
  belongs_to :book
  belongs_to :company

  validates :commodity, presence: true
  validates :book, presence: true
  validates :company, presence: true

  def to_s
    "#{company} - #{book} - #{commodity}"
  end
end
