class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    find_vendor
  end

  
  private

  def find_vendor
    @vendor = Vendor.find_by(id: params[:id])
  end

end
