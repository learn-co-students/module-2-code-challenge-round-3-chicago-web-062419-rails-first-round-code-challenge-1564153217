class VendorsweetsController < ApplicationController
  def index
    @vendorsweets = Vendorsweet.all
  end

  def new
    @vendorsweet = Vendorsweet.new
  end

  def create
    @vendorsweet = Vendorsweet.create(vendorsweet_params)
    if @vendorsweet.save
      redirect_to @vendorsweet
    else
      flash[:message] = "Invalid entry"
      redirect_to new_vendorsweet_path
    end
  end

  def show
    find_vendorsweet
    @vendorsweets = Vendorsweet.all
  end

  def edit
    find_vendorsweet
  end

  def update
    find_vendorsweet
    @vendorsweet.update(vendorsweet_params)
  end

  private

  def vendorsweet_params
    params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
  end

  def find_vendorsweet
    @vendorsweet = Vendorsweet.find(params[:id])
  end
end
