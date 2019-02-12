# This migration comes from enju_library_engine (originally 20140709113905)
class CreateUserExportFileTransitions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_export_file_transitions do |t|
      t.string :to_state
      t.jsonb :metadata, default: {}
      t.integer :sort_key
      t.references :user_export_file
      t.timestamps
    end

    add_index :user_export_file_transitions, [:sort_key, :user_export_file_id], unique: true, name: "index_user_export_file_transitions_on_sort_key_and_file_id"
  end
end