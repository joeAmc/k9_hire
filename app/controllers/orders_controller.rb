class OrdersController < ApplicationController
  def create
    booking = Booking.find(params[:booking_id])
    booking.total_price = (((booking.drop_off - booking.pick_up) /86400).to_i) * booking.dog.price
    order  = Order.create!(booking: booking, amount_cents: booking.total_price, state: 'pending', user: current_user)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: booking.dog_id,
        images: ["https://static.wikia.nocookie.net/disney/images/2/27/Goofy_transparent.png/revision/latest?cb=20200308081711"],
        amount: (booking.total_price)*100,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end
