class AddCompanyToAccountings < ActiveRecord::Migration
  def up
    add_reference :accountings, :company, index: true, foreign_key: true

    company = Company.create!(name: 'Company 1')

    Accounting.all.update_all(company_id: company.id)
  end

  def down
    remove_reference :accountings, :company, index: true, foreign_key: true

    Company.delete_all
  end
end
