# This migration comes from enju_event_engine (originally 20160703184311)
class AddMostRecentToEventExportFileTransitions < ActiveRecord::Migration[5.2]
  def up
    add_column :event_export_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :event_export_file_transitions, :most_recent
  end
end
