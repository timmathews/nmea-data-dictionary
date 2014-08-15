class CreateParameterGroups < ActiveRecord::Migration
  def change
    create_table :parameter_groups do |t|
      t.string :name
      t.text :description
      t.integer :pgn
      t.integer :priority
      t.integer :default_rate
      t.integer :database_version
      t.integer :category
      t.integer :type
      t.integer :size
      t.integer :repeating_fields
      t.boolean :is_known

      t.timestamps
    end
  end
end
