class VendorSweetsController < ApplicationController

  def new
    @vendorsweet = VendorSweet.new
  end

  def show
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def create
    @vendorsweet = VendorSweet.new(vendorsweet_params)
    if @vendorsweet.valid?
      @vendorsweet.save
      redirect to vendor_path(@vendorsweet)
    else
      render :new
    end
  end

  private
     def vendorsweet_params
     params.require(:vendorsweet).permit(:new, :show)
     end

end
