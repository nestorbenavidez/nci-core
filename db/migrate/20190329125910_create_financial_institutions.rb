class CreateFinancialInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :financial_institutions do |t|
      t.string :name
      t.decimal :apr

      t.timestamps
    end
  end
end
