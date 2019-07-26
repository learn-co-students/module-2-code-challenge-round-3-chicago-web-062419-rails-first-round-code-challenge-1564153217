class AddColumnsToVendorsweets < ActiveRecord::Migration[5.1]
  def change
    add_column :vendorsweets, :price, :integer
    add_column :vendorsweets, :vendor_id, :integer
    add_column :vendorsweets, :sweet_id, :integer
  end
end
