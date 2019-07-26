class VendorsSweetsController < ApplicationController
    

  
    def new 
        @vendorssweets = VendorSweet.new
    end 

    def create 
        @vendorsweet = VendorSweet.new(vendorsweet_params)

        if @vendorsweet.valid?
            @vendorsweet.save
            redirect_to vendor_path(@vendor)
        
        else 
            render :edit 
        end 

    def edit 
        @vendorsweet = VendorSweet.find(params[:id])
        @vendorsweet = VendorSweet.update(vendorsweet_params)

        if @vendorsweet.valid?
            @vendorsweet.save
            redirect_to vendor_path(@vendor)
        
        else 
            render :edit 
        end 
        
    end 

    private 

    def vendorsweet_params 
        params.require(:vendorsweet).permit(:price, :vendor_id, :sweet_id)
    end 

end 


# I am being blown up by the double pluralization of the models controllers and tables 
# took half the time to seed my database. I feel like I could flex way more of what I know right now.
# I know none of this will work because my route wont work due to pluralization. 