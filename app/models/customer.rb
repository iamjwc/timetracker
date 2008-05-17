class Customer < ActiveRecord::Base
  has_many :invoices
  has_many :projects
  has_many :time_logs
  has_many :todos

  def start_working
    self.time_logs << TimeLog.new(:started_at => Time.now)
  end

  def stop_working
    time_log = self.current_time_log
    time_log.update_attributes(:ended_at => Time.now)
  end

  def current_time_log
    TimeLog.find_open_time_log_for_customer(self)
  end
end
