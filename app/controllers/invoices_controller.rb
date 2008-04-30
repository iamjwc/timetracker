class InvoicesController < ApplicationController
  def index
    @customer = Customer.find params[:customer_id]
    @invoices = @customer.invoices
  end

  def show
    @customer = Customer.find params[:customer_id]
    @invoice = Invoice.find params[:id]
    @line_items = @invoice.line_items
  end

  def new
    @customer = Customer.find params[:customer_id]
    @invoice = Invoice.new
  end

  def create
    @customer = Customer.find params[:customer_id]
    @customer.invoices << Invoice.create(params[:invoice])

    redirect_to :action => :index
  end

  def edit
    @customer = Customer.find params[:customer_id]
    @invoice = Invoice.find params[:id]
  end
end
