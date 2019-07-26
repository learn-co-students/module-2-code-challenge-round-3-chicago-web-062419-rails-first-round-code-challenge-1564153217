class Sweet < ApplicationRecord
    has_many :vendors
    has_many :vendorsweets, through: :vendors
end
