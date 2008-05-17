class TimeBitsController < ApplicationController
  def create
    @time_log = TimeLog.find params[:time_log_id]
    @customer = @time_log.customer
    @time_log.time_bits << TimeBit.new(params[:time_bit])

    redirect_to customer_url(@customer)
  end

  def destroy
    @time_log = TimeLog.find params[:time_log_id]
    @customer = @time_log.customer
    TimeBit.destroy params[:id]

    redirect_to customer_url(@customer)
  end
end
