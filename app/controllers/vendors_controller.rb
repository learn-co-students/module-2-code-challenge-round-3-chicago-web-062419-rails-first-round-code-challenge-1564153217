class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find_by(id: params[:id])
  end

  
  private
  def vendor_params
    params.require(:vendor).permit(:name)
  end

end
