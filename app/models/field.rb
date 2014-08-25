class Field < ActiveRecord::Base
  has_many :field_enumerators
  belongs_to :field_type
  belongs_to :field_unit
  has_many :parameter_group_fields
  has_many :parameter_groups, through: :parameter_group_fields
end
