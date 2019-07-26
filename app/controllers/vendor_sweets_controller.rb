class VendorSweetsController < ApplicationController
    def show
      @vendor_sweet = VendorSweet.find_by(id: params[:id])
    end

    def index 
      @vendor_sweets = VendorSweet.all
    end

    def new
      @vendor_sweet = VendorSweet.new
      @vendors = Vendor.all
      @sweets = Sweet.all
    end

    def create
      @vendor_sweet = VendorSweet.new(params[:vendor_sweet_params])
      @vendors = Vendor.all
      @sweets = Sweet.all

      if @vendor_sweet.valid?
        @vendor_sweet.save
        redirect_to vendor_path(@vendor)
      else
        @errors = @vendor_sweet.errors.full_messages
        render :new
      end

    end

    private

    def vendor_sweet_params
      params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

end