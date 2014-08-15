class CreateFieldEnumerators < ActiveRecord::Migration
  def change
    create_table :field_enumerators do |t|
      t.string :name
      t.text :description
      t.integer :field_id
      t.integer :value

      t.timestamps
    end
  end
end
