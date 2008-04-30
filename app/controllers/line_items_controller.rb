class LineItemsController < ApplicationController
  def create
    @invoice = Invoice.find params[:invoice_id]
    @customer = @invoice.customer
    @invoice.line_items << LineItem.new(params[:line_item])

    redirect_to customer_invoice_url(@customer, @invoice)
  end

  def destroy
    @invoice = Invoice.find params[:invoice_id]
    @customer = @invoice.customer
    LineItem.destroy params[:id]

    redirect_to customer_invoice_url(@customer, @invoice)
  end
end
