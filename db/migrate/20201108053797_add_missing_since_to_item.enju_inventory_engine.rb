# This migration comes from enju_inventory_engine (originally 20201025090703)
class AddMissingSinceToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :missing_since, :date
  end
end
