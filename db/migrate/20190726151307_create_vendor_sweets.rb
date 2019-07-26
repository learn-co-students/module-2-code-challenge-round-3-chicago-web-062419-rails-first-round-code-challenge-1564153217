class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :price
      t.integer :sweet_id
      t.integer :vendor_id
    end
  end
end
