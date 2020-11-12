# This migration comes from enju_inventory_engine (originally 20120413100431)
class AddFingerprintToInventoryFile < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_files, :inventory_fingerprint, :string
  end
end
