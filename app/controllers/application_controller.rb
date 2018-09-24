require "application_responder"

class ApplicationController < ActionController::API
  self.responder = ApplicationResponder
  respond_to :html


  before_action :set_cart

  private
  def set_cart
    # @cart = Cart.find(session[:cart_id])
    puts "set_cart-set_cart-set_cart-set_cart->"
    puts "qqqqqq: #{session[:cart_id].to_json}"
    @cart = Cart.find(1)
  rescue ActiveRecord::RecordNotFound
    puts "set_rescue-set_rescue-set_rescue-set_rescue->"
    #@cart = Cart.create
    # session[:cart_id] = @cart.id
    #session[:cart_id] = @cart.id
  end
end
