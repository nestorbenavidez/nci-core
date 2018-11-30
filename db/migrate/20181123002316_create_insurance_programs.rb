class CreateInsurancePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_programs do |t|
      t.string :name
      t.decimal :broder_fee
      t.decimal :inspection_fee
      t.decimal :surplus_tax
      t.references :us_state, foreign_key: true

      t.timestamps
    end
  end
end
