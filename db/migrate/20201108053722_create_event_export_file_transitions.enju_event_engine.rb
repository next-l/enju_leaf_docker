# This migration comes from enju_event_engine (originally 20140812153137)
class CreateEventExportFileTransitions < ActiveRecord::Migration[5.2]
  def change
    create_table :event_export_file_transitions do |t|
      t.string :to_state
      t.jsonb :metadata, default: {}
      t.integer :sort_key
      t.integer :event_export_file_id
      t.timestamps
    end

    add_index :event_export_file_transitions, :event_export_file_id, name: "index_event_export_file_transitions_on_file_id"
    add_index :event_export_file_transitions, [:sort_key, :event_export_file_id], unique: true, name: "index_event_export_file_transitions_on_sort_key_and_file_id"
  end
end
