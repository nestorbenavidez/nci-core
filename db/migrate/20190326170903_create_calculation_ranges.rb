class CreateCalculationRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :calculation_ranges do |t|
      t.string :name
      t.decimal :value
      t.references :insurance_program

      t.timestamps
    end
  end
end
