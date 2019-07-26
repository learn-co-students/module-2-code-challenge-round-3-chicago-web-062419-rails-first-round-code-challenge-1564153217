class VendorSweet < ApplicationRecord
  belongs_to :sweet 
  belongs_to :vendor
  validates :price, presence: true, length: {minimum: 0}, numericality: { only_integer: true }
  validates_uniqueness_of :vendorsweet, scope: {:vendor_id, :sweet_id}, message: "This vendorsweet already exists!"

end
