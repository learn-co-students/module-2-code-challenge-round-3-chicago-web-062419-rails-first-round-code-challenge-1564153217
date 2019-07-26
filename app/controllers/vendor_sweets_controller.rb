class VendorSweetsController < ApplicationController
  def new
    @vendor_sweet = VendorSweet.new
    @sweets = Sweet.all
    @vendors = Vendor.all
  end

  def create
    @vendor_sweet = VendorSweet.new(vs_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor)
    else
      @sweets = Sweet.all
      @vendors = Vendor.all
      render :new
    end
  end

  private

  def get_vendor_sweet
    @vendor_sweet = VendorSweet.find(params[:id])
  end

  def vs_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end
end
