class Vendor < ApplicationRecord
    has_many :vendors 
    has_many :sweets, through: :vendorsweet
end
