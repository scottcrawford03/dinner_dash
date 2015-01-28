class Admin::OrdersController < Admin::BaseController
  def index
    @users = User.all
  end

  def update
    order = Order.find(params[:update_order_status][:order_id])
    order.status = params[:update_order_status][:status]
    order.save
    redirect_to admin_orders_url
  end
end
