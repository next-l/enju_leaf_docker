# This migration comes from enju_biblio_engine (originally 20130506175303)
class CreateIdentifierTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :identifier_types do |t|
      t.string :name, index: {unique: true}, null: false
      t.jsonb :display_name, default: {}, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
