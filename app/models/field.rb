class Field < ActiveRecord::Base
  has_many :field_enumerators
  belongs_to :field_type
  belongs_to :field_unit
  has_many :parameter_group_fields
  has_many :parameter_groups, through: :parameter_group_fields

  default_scope { order 'name, length' }

  def sel_name
    "#{name}, #{length}"
  end

  def min_value_typed
    case field_type_id
    when 1, 2, 5, 6
      if scaling < 1 && min_value != 0
        return min_value
      else
        return min_value.to_i
      end
    when 3, 4
      return min_value
    else
      return nil
    end
  end

  def max_value_typed
    case field_type_id
    when 1, 2, 5, 6
      if scaling < 1
        return max_value
      else
        return max_value.to_i
      end
    when 3, 4
      return max_value
    else
      return nil
    end
  end
end

