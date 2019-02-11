# This migration comes from enju_biblio_engine (originally 20100925043847)
class CreateResourceImportResults < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_import_results do |t|
      t.references :resource_import_file, foreign_key: true
      t.references :manifestation, type: :uuid
      t.references :item, type: :uuid
      t.text :body

      t.timestamps
    end
  end
end
