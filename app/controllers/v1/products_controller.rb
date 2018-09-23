class V1::ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  def show
    @product = Product.find(params[:id])
    render json: @product
  end

  def create 
    @product = Product.new(product_params)
    @product.save
    render json: @product, status: :created
  end

  def update
    @product = Product.update(product_params)
    render json: @product
  end

  def destroy
    @product.destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :type, :brand_name, :gender, :frame_material, :rim_material, :model_number, :net_weight)
  end
end
