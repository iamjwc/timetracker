class ProjectsController < ApplicationController
  def create
    @customer = Customer.find params[:customer_id]
    @customer.projects << Project.new(params[:project])

    redirect_to customer_url(@customer)
  end
end
