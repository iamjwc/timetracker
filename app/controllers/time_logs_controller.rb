class TimeLogsController < ApplicationController
  def index
    @customer = Customer.find params[:customer_id]
    @time_logs = @customer.time_logs
  end

  def update
    @customer = Customer.find params[:customer_id]
    @time_log = TimeLog.find params[:id]

    @time_log.update_attributes(params[:time_log])

    redirect_to customer_url(@customer)
  end

  def start
    @customer = Customer.find params[:customer_id]
    @customer.start_working

    redirect_to customer_url(@customer)
  end

  def stop
    @customer = Customer.find params[:customer_id]
    @customer.stop_working

    redirect_to customer_url(@customer)
  end
end
