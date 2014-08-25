class MoveBitAndByteColumns < ActiveRecord::Migration
  def change
    remove_column :fields, :bit_pos
    remove_column :fields, :byte_pos
    add_column :parameter_group_fields, :byte_position, :integer
    add_column :parameter_group_fields, :bit_position, :integer
  end
end
