class RenameParameterGroupColumnType < ActiveRecord::Migration
  def change
    rename_column :parameter_groups, :type, :type_id
    rename_column :parameter_groups, :category, :category_id
  end
end
