class CustomersController < ApplicationController
  def index
    @customers = Customer.find :all
  end

  def show
    if params[:id].to_s.length > 3
      @customer = Customer.find_by_name params[:id]
    end
    if @customer.nil?
      @customer = Customer.find params[:id]
    end

    @priorities = Priority.find(:all).sort.reverse

    @todo = Todo.new
    @todo.customer = @customer
  end

  def new
    @customer = Customer.new
    @invoice_id = params[:invoice_id]
  end

  def create
    @customer = Customer.create(params[:customer])

    redirect_to :action => :index
  end
end
