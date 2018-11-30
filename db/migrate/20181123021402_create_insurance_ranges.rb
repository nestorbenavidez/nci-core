class CreateInsuranceRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_ranges do |t|
      t.string :name
      t.references :calculation_type, foreign_key: true

      t.timestamps
    end
  end
end
