class VendorSweetsController < ApplicationController
    def index
        @vendor_sweets = VendorSweet.all
    end

    def new
        @vendor_sweet = VendorSweet.new
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
            render 'new'
        end
    end

    def edit
        @vendor_sweet = VendorSweet.find_by(id: params[:id])
    end

    def update
        @vendor_sweet = VendorSweet.find_by(id: params[:id])
        if @vendor.update(vendor_sweet_params)
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
            render 'edit'
        end
    end


    private
    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id , :sweet_id , :price)
    end
end