class TimeLogsController < ApplicationController
  def index
    @customer = Customer.find params[:customer_id]
    @time_logs = @customer.time_logs.sort_by {|t| t.started_at }
    @grouped_time_logs = @time_logs.group_by {|t| t.started_at.to_date }
  end

  def update
    @customer = Customer.find params[:customer_id]
    @time_log = TimeLog.find params[:id]

    @time_log.update_attributes(params[:time_log])

    redirect_to customer_url(@customer)
  end

  def destroy
    @customer = Customer.find params[:customer_id]
    @time_log = TimeLog.find params[:id]

    @time_log.destroy

    redirect_to customer_time_logs_url(@customer)
  end

  def merge
    @customer = Customer.find params[:customer_id]
    @time_logs = TimeLog.find(params[:time_log][:ids].map{|k,v| k })

    newest = @time_logs.sort_by {|t| t.started_at }.reverse.first
    @time_logs.delete(newest)

    total_time = newest.total_time.minutes
    total_description = newest.description
    @time_logs.each do |time_log|
      total_time += time_log.total_time.minutes
      total_description += time_log.description unless time_log.description.nil?
    end

    newest.ended_at = total_time.from_now(newest.started_at)
    newest.description = total_description
    newest.save

    @time_logs.each &:destroy

    redirect_to customer_time_logs_url(@customer)
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
