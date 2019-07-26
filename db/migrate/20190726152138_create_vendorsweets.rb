class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.integer :vendor_id
      t.integer :sweet_id
      t.integer :price 

      t.timestamps
    end
  end
end
