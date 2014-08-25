class RenameFieldFields < ActiveRecord::Migration
  def change
    rename_column :fields, :type, :field_type_id
    rename_column :fields, :units, :field_unit_id
  end
end
