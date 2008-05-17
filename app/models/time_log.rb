class TimeLog < ActiveRecord::Base
  belongs_to :project
  belongs_to :customer

  has_many :time_bits

  def total_time
    time_in_seconds = (self.ended_at || Time.now) - self.started_at
    time_in_minutes = time_in_seconds / 60
    time_in_minutes.to_i
  end

  def self.find_open_time_log_for_customer(customer)
    TimeLog.find(
      :first,
      :conditions => {:customer_id => customer.id, :ended_at => nil},
      :order => "started_at DESC"
    )
  end

  def still_working?
    ended_at.nil?
  end

  def short_description
    if self.description.nil?
      ""
    else
      self.description[0..30] + (self.description.length > 30 ? "..." : "")
    end
  end
end
