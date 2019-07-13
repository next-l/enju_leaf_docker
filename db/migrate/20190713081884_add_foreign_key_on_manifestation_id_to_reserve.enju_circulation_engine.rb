# This migration comes from enju_circulation_engine (originally 20160703190209)
class AddForeignKeyOnManifestationIdToReserve < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key :reserves, :manifestations
  end
end
