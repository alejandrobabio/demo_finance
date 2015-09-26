class CreateAccountings < ActiveRecord::Migration
  def change
    create_table :accountings do |t|
      t.belongs_to :commodity, index: true, foreign_key: true
      t.belongs_to :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
