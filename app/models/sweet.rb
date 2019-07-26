class Sweet < ApplicationRecord
has_many :sweets 
has_many :vendors, through: :vendorsweet
end

