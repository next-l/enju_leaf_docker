# This migration comes from enju_biblio_engine (originally 20080830154109)
class CreateRealizes < ActiveRecord::Migration[5.2]
  def change
    create_table :realizes do |t|
      t.references :agent, foreign_key: true, null: false
      t.references :expression, null: false, foreign_key: {to_table: :manifestations}
      t.integer :position

      t.timestamps
    end
  end
end
