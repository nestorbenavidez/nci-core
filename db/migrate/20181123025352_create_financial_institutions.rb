class CreateFinancialInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :financial_institutions do |t|
      t.string :name
      t.decimal :apr
      t.references :insurance_program, foreign_key: true

      t.timestamps
    end
  end
end
