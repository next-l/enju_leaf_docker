# This migration comes from enju_biblio_engine (originally 20100925074559)
class CreateAgentImportResults < ActiveRecord::Migration[5.2]
  def change
    create_table :agent_import_results do |t|
      t.references :agent_import_file, foreign_key: true
      t.integer :agent_id
      t.text :body

      t.timestamps
    end
  end
end
