# This migration comes from enju_biblio_engine (originally 20100129142347)
class CreateImportRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :import_requests do |t|
      t.string :isbn, index: true, null: false
      t.references :manifestation, foreign_key: true, type: :uuid
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
