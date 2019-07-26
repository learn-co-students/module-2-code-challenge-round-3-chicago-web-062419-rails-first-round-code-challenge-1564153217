class CreateVendorsSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors_sweets do |t|
      t.integer :price
      t.integer :vendor_id
      t.integer :sweet_id
    end
  end
end
