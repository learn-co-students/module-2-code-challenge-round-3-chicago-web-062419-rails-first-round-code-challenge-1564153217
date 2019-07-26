class VendorSweetsController < ApplicationController

  def index
    @vendorsweets = VendorSweet.all
  end

  def show
  end

  def new
    @vendorsweet = VendorSweet.new
  end

  def create
    @vendorsweet = VendorSweet.create(vendor_sweet_params)
    redirect_to vendor_sweet_path(@vendorsweet)
  end
  
end

private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

