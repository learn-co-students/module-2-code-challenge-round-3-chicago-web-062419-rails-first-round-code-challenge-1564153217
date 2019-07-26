class VendorSweetsController < ApplicationController

    def new
         @vendorsweet = VendorSweet.new
    end

    def create
        @vendorsweet = VendorSweet.assign_attributes(params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id))
        if @vendorsweet.valid?
            @vendorsweet.save
        redirect_to vendor_path(@vendorsweet.vendor_id)
        else 
            @errors = @vendorsweet.errors.full_messages
            render :new
        end
    end

  end
  