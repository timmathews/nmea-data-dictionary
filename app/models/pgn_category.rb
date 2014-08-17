class PgnCategory < ActiveRecord::Base
  has_many :parameter_groups

  def name_with_desc
    self.name + " - " + self.description
  end
end
