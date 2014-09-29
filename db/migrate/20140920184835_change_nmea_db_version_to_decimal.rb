class ChangeNmeaDbVersionToDecimal < ActiveRecord::Migration
  def change
    change_column :parameter_groups, :database_version, :decimal, precision: 5, scale: 3
  end
end
