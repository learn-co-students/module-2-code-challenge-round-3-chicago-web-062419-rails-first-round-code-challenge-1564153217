class VendorSweetsController < ApplicationController

    def index
        redirect_to vendors_path
    end

    def new
        @vendorsweet = VendorSweet.new 
        @vendors = Vendor.all 
        @sweets = Sweet.all 
    end

    def create
        @vendorsweet = VendorSweet.new(vendor_sweet_params)
        @vendors = Vendor.all 
        @sweets = Sweet.all 

        if @vendorsweet.save
            redirect_to vendor_path(@vendorsweet.vendor.id)
        else
            render 'new'  
        end
    end

    private

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
    end
end
