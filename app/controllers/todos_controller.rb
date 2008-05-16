class TodosController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @customer.todos << Todo.new(params[:todo])

    redirect_to customer_url(@customer)
  end
end
