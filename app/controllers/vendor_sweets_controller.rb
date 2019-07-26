class VendorSweetsController < ApplicationController

    def new
        @vendorsweet = VendorSweet.new
    end

    def create
        @vendorsweet = VendorSweet.new

        if @vendorsweet.valid?
            @vendorsweet.save
            redirect_to vendor_path(vendor)
        else
            @errors = @vendorsweet.errors.full_messages
            render :new
        end
    end
end
