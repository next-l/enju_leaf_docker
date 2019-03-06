# This migration comes from enju_biblio_engine (originally 20081028083208)
class CreateResourceImportFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_import_files, id: :uuid do |t|
      t.references :user, foreign_key: true
      t.text :note
      t.datetime :executed_at

      t.timestamps
    end
  end
end
