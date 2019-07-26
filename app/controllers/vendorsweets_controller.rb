class VendorsweetsController < ApplicationController

  def index
    @vendorsweets = Vendorsweet.all
  end

  def new
    @vendorsweet = Vendorsweet.new
  end

  def show
    @vendorsweet = Vendorsweet.find_by(id: params[:id])
  end

  def create
    @vendorsweet = Vendorsweet.new(vendorsweet_params)
    @vendorsweet.save
    redirect_to @vendorsweet
  end

  def edit
    @vendorsweet = Vendorsweet.find_by(id: params[:id])
  end

  def update
    @vendorsweet = Vendorsweet.find_by(id: params[:id])
    @vendorsweet = Vendorsweet.update
    redirect_to @vendorsweet
  end



  private

  def vendorsweet_params
    params.require(:vendorsweet).permit!
  end

end
