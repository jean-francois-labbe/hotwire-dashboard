module Dashboards
  class OrdersController < ApplicationController
    def index
      @order_count = Order.count
    end
  end
end
