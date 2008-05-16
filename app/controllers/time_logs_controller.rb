class TimeLogsController < ApplicationController
  def start
    @customer = Customer.find params[:customer_id]
  end

  def stop
    @customer = Customer.find params[:customer_id]
  end
end
