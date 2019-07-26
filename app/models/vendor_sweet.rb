class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    # Validations
    validates :price, presence: true
    validates_numericality_of :price, :greater_than => 0
    
end
# Let's add some validations. `VendorSweets` should *not* be able to be saved if:
#   a) the price is blank
#   b) the price is a negative number
#   c) the price is a number that isn't an integer
