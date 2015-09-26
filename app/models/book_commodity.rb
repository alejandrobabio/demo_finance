class BookCommodity < ActiveRecord::Base
  belongs_to :book
  belongs_to :commodity

  before_save :create_accountings, on: :create

private

  def create_accountings
    Company.all.each do |company|
      Accounting.find_or_create_by(commodity: commodity, book: book, company: company)
    end
  end
end
