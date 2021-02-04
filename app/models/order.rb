class Order < ApplicationRecord
  after_create_commit do
    broadcast_replace_to(:order_count, target: 'order_count', partial: 'dashboards/orders/count', locals: { order_count: Order.count })
    broadcast_prepend_to(:orders, target: 'orders_table_lines', partial: 'orders/order_line', locals: { order: self })
  end

  scope :shipped, -> {where(shipped: true)}
  scope :not_shipped, -> {where(shipped: false)}
end
