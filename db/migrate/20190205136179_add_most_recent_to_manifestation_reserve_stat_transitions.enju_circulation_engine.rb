# This migration comes from enju_circulation_engine (originally 20160703184723)
class AddMostRecentToManifestationReserveStatTransitions < ActiveRecord::Migration[5.2]
  def up
    add_column :manifestation_reserve_stat_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :manifestation_reserve_stat_transitions, :most_recent
  end
end
