class ParameterGroup < ActiveRecord::Base
  belongs_to :pgn_category
  belongs_to :pgn_type

  validate :size_is_correct

  def size_is_correct
    if type == 2 && size > 8
      errors.add(:size, "can't be greater than 8 when type is single frame")
    elsif type == 3 && size > 223
      errors.add(:size, "can't be greater than 223 when type is fast packet")
    elsif type == 4 && size > 1785
      errors.add(:size, "can't be greater than 1785 when type is transport protocol")
    end
  end
end
