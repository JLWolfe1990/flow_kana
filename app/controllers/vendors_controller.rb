class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all

    respond_to do |format|
      format.html
      format.json { render json: @vendors }
    end
  end

  def create
    @vendor = Vendor.create(vendor_attributes)
  end

  def destroy
    @vendor = Vendor.find(params[:id])

    @vendor.destroy!

    redirect_to vendors_path
  end

  private

  def vendor_attributes
    params.require(:vendor).permit(:name)
  end
end