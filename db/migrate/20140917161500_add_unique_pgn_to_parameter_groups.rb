class AddUniquePgnToParameterGroups < ActiveRecord::Migration
  def change
    add_column :parameter_groups, :unique_pgn, :string, :limit => 18
  end
end
