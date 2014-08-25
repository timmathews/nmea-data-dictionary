class ParameterGroupField < ActiveRecord::Base
  belongs_to :parameter_group
  belongs_to :field
end
