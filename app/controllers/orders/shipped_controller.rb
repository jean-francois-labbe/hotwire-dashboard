class Orders::ShippedController < ApplicationController
  def create
    @order = Order.find(params[:order_id])
    @order.update(shipped: true)

    respond_to do |format|
      format.html {redirect_to root_path}
      format.turbo_stream {render turbo_stream: turbo_stream.remove(@order)}
    end
  end
end
