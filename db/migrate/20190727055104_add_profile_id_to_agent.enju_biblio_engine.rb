# This migration comes from enju_biblio_engine (originally 20151125004028)
class AddProfileIdToAgent < ActiveRecord::Migration[4.2]
  def change
    add_column :agents, :profile_id, :integer
    add_index :agents, :profile_id
  end
end
