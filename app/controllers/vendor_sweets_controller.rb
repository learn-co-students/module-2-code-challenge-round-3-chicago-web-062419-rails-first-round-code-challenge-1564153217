class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
      end
  
      def create
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
  
        redirect_to vendors_path
      end
  
        private

        def vendor_sweet_params
            params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
        end
end
