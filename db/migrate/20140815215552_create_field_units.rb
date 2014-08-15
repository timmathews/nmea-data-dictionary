class CreateFieldUnits < ActiveRecord::Migration
  def change
    create_table :field_units do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
