class Vendor < ApplicationRecord
    has_many :sweets
    has_many :vendorsweets, through: :sweets
end
