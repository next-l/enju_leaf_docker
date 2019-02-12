# This migration comes from enju_biblio_engine (originally 20170116134107)
class CreateIssnRecordAndManifestations < ActiveRecord::Migration[5.2]
  def change
    create_table :issn_record_and_manifestations do |t|
      t.references :issn_record, foreign_key: true, on_delete: :cascade, null: false
      t.references :manifestation, foreign_key: true, on_delete: :cascade, null: false, type: :uuid
      t.integer :position

      t.timestamps
    end
  end
end