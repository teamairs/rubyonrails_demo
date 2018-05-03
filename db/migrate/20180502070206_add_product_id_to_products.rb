class AddProductIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_id, :integer, default: 1
  end
end
