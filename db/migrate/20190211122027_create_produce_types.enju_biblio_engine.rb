# This migration comes from enju_biblio_engine (originally 20111124110355)
class CreateProduceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :produce_types do |t|
      t.string :name
      t.jsonb :display_name, default: {}, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end