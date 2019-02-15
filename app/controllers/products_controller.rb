class ProductsController < ApplicationController
  before_filter :load_vendor, except: :destroy

  def index
    @products = @vendor.products

    render json: @products
  end

  def create
    @product = @vendor.products.create(product_attributes)
  end

  def destroy
    @product = Product.destroy(params[:id])
  end

  private

  def load_vendor
    @vendor = Vendor.find_by(id: params[:vendor_id])
    render json: {}, status: :bad_request
    false
  end

  def product_attributes
    params.require(:product).permit(:vendor_id, :name)
  end
end