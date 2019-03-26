class CreateFieldClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :field_classes do |t|
      t.string :name
      t.references :insurance_program

      t.timestamps
    end
  end
end
