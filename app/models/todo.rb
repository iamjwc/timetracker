class Todo < ActiveRecord::Base
  belongs_to :customer
  belongs_to :project
  belongs_to :priority

  def <=>(other)
    if self.priority.nil? && other.priority.nil?
      0
    elsif self.priority.nil?
      -1
    elsif other.priority.nil?
      1
    else
      self.priority <=> other.priority
    end
  end
end
