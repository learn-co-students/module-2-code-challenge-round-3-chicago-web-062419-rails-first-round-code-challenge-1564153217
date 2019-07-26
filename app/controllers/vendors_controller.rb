class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    find_vendor
  end

  private

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
