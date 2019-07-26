class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.create(vendor_params)
    redirect_to @vendor
  end

  def show
    find_vendor
  end

  def edit
    find_vendor
  end

  def update
    find_vendor
    @vendor.update(vendor_params)
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name)
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end
