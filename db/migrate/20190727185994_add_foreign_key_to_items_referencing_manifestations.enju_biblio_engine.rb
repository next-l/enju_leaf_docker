# This migration comes from enju_biblio_engine (originally 20150117111136)
class AddForeignKeyToItemsReferencingManifestations < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key :items, :manifestations
  end
end
