class CustomersController < ApplicationController
  def index
    @customers = Customer.find :all
  end

  def show
    @customers = Customer.find params[:id]
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
