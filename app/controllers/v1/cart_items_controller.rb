class V1::CartItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  def index
    @cart_items = CartItem.all
    render json: @cart_items
  end

  def create
    @product = Product.find(params[:cart_item][:product_id])
    @cart_item = @cart.add_product(@product)

    if @cart_item.save
      render json: @cart_item 
    else
      render json: @cart_item.errors 
    end
  end

  private
    def set_line_item
      @cart_item = CartItem.find(params[:id])
    end
end
