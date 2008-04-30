class Invoice < ActiveRecord::Base
  belongs_to :customer
  has_many :line_items

  def total_hours
    self.line_items.inject(0) {|total, li| total += li.hours }
  end

  def total_owed
    self.line_items.inject(0) {|total, li| total += li.hours * li.rate }
  end
end
