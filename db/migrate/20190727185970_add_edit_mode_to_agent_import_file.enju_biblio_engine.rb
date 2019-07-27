# This migration comes from enju_biblio_engine (originally 20120602141129)
class AddEditModeToAgentImportFile < ActiveRecord::Migration[4.2]
  def change
    add_column :agent_import_files, :edit_mode, :string
  end
end
