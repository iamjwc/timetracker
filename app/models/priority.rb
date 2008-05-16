class Priority < ActiveRecord::Base
  has_many :todos

  def <=>(other)
    self.level <=> other.level
  end
end
