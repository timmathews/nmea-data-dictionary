class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.text :description
      t.integer :byte_pos
      t.integer :bit_pos
      t.integer :length
      t.integer :type
      t.float :scaling
      t.integer :offset
      t.integer :units
      t.float :min_value
      t.float :max_value
      t.string :signalk_path

      t.timestamps
    end
  end
end
