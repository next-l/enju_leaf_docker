# This migration comes from enju_event_engine (originally 20120413170734)
class AddErrorMessageToEventImportFile < ActiveRecord::Migration[5.2]
  def change
    add_column :event_import_files, :error_message, :text
  end
end
