# This migration comes from enju_library_engine (originally 20120510140958)
class AddClosedToShelf < ActiveRecord::Migration[5.2]
  def change
    add_column :shelves, :closed, :boolean, default: false, null: false
  end
end
