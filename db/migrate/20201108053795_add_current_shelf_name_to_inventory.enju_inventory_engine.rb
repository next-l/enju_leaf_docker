# This migration comes from enju_inventory_engine (originally 20191224091957)
class AddCurrentShelfNameToInventory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :current_shelf_name, :string, null: false
    add_index :inventories, :current_shelf_name
  end
end
