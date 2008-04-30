class LineItemsController < ApplicationController
  def index
    @invoice = Invoice.find params[:invoice_id]
    @customer = @invoice.customer
    @line_items = @invoice.line_items
  end

  def create
    @invoice = Invoice.find params[:invoice_id]
    @invoice.line_items << LineItem.new(params[:line_item])

    redirect_to :action => :index
  end
end
