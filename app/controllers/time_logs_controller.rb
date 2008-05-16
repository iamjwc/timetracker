class TimeLogsController < ApplicationController
  def start
    @customer = Customer.find
    @customer.time_logs << TimeLogs.new
  end

  def stop
    @customer = Customer.find params[:customer_id]
  end
end
