class CreateBookCommodities < ActiveRecord::Migration
  def change
    create_table :book_commodities do |t|
      t.belongs_to :book, index: true, foreign_key: true
      t.belongs_to :commodity, index: true, foreign_key: true

      t.timestamps null: false
    end

    reversible do |dir|
      dir.up do
        Accounting.select(:book_id, :commodity_id).distinct.to_a.each do |acc|
          BookCommodity.create!(book_id: acc.book_id, commodity_id: acc.commodity_id)
        end
      end
    end
  end
end
