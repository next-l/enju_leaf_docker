# This migration comes from enju_biblio_engine (originally 20140614065404)
class CreateResourceExportFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_export_files do |t|
      t.references :user, foreign_key: true
      t.attachment :resource_export
      t.datetime :executed_at

      t.timestamps
    end
  end
end
