class VendorsController < ApplicationController
  def index
    @vendor_products = Vendor.grouped_counts
  end
end