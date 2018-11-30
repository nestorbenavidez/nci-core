class CreateCalculationTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :calculation_types do |t|
      t.string :name
      t.references :field_type, foreign_key: true

      t.timestamps
    end
  end
end
