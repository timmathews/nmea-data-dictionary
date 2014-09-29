class ParameterGroup < ActiveRecord::Base
  belongs_to :pgn_category
  belongs_to :pgn_type
  has_many :parameter_group_fields
  has_many :fields, through: :parameter_group_fields

  accepts_nested_attributes_for :parameter_group_fields

  default_scope { includes(:pgn_category).order("pgn_categories.name, pgn, unique_pgn") }

  validate :size_is_correct

  def size_is_correct
    if pgn_type_id == 2 && size > 8
      errors.add(:size, "can't be greater than 8 when type is single frame")
    elsif pgn_type_id == 3 && size > 223
      errors.add(:size, "can't be greater than 223 when type is fast packet")
    elsif pgn_type_id == 4 && size > 1785
      errors.add(:size, "can't be greater than 1785 when type is transport protocol")
    end
  end
end
