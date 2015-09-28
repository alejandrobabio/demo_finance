class Book < ActiveRecord::Base
  has_many :accountings
  has_many :commodities, through: :accountings
  has_many :companies, through: :accountings

  before_save :set_companies

  def to_s
    name
  end

  private

  def set_companies
    self.company_ids = Company.all.map(&:id)
  end
end
