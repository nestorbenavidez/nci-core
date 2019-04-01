class CreateInsurancePrograms < ActiveRecord::Migration[5.2]
  def change
    create_table :insurance_programs do |t|
      t.string :name
      t.decimal :broker_fee
      t.decimal :inspection_fee
      t.decimal :surplus_fee
      t.decimal :surplus_tax
      t.boolean :calc_type
      t.timestamps
    end
  end
end
