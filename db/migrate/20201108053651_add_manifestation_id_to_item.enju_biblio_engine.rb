# This migration comes from enju_biblio_engine (originally 20140802082007)
class AddManifestationIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :manifestation_id, :integer
    add_index :items, :manifestation_id
  end
end
