# This migration comes from enju_biblio_engine (originally 47)
class CreateProduces < ActiveRecord::Migration[5.2]
  def change
    create_table :produces do |t|
      t.references :agent, foreign_key: true, null: false, type: :uuid
      t.references :manifestation, foreign_key: true, null: false, type: :uuid
      t.integer :position
      t.timestamps
    end
  end
end
