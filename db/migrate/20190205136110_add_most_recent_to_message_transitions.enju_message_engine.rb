# This migration comes from enju_message_engine (originally 20160703185015)
class AddMostRecentToMessageTransitions < ActiveRecord::Migration[5.2]
  def up
    add_column :message_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :message_transitions, :most_recent
  end
end
