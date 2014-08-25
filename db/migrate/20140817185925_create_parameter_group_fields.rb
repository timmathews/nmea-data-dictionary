class CreateParameterGroupFields < ActiveRecord::Migration
  def change
    create_table :parameter_group_fields do |t|
      t.references :parameter_group
      t.references :field
      t.integer :order
      t.timestamps
    end
  end
end
