# This migration comes from enju_biblio_engine (originally 20190818075603)
class AddMemoToManifestation < ActiveRecord::Migration[5.2]
  def change
    add_column :manifestations, :memo, :text
  end
end
