class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets
    # accepts_nested_attributes_for :vendor_sweets
end
