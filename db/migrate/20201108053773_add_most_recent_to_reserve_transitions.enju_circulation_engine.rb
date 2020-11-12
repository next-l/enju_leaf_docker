# This migration comes from enju_circulation_engine (originally 20160703184619)
class AddMostRecentToReserveTransitions < ActiveRecord::Migration[5.2]
  def up
    add_column :reserve_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :reserve_transitions, :most_recent
  end
end
