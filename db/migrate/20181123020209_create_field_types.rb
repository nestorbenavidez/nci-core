class CreateFieldTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :field_types do |t|
      t.string :name
      t.references :insurance_program, foreign_key: true

      t.timestamps
    end
  end
end
