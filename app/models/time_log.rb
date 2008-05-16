class TimeLog < ActiveRecord::Base
  belongs_to :project
  belongs_to :customer

  def self.find_open_time_log_for_customer(customer)
    TimeLog.find(
      :first,
      :conditions => {:customer_id => customer_id, :ended_at => nil},
      :order => "started_at DESC"
    )
  end
end
