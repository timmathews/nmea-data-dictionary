class RenameParameterGroupColumns < ActiveRecord::Migration
  def change
    rename_column :parameter_groups, :type_id, :pgn_type_id
    rename_column :parameter_groups, :category_id, :pgn_category_id
  end
end
