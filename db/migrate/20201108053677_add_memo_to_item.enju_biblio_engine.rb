# This migration comes from enju_biblio_engine (originally 20190818075628)
class AddMemoToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :memo, :text
  end
end
