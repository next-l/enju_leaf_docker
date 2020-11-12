# This migration comes from enju_biblio_engine (originally 20111124110059)
class CreateCreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :create_types do |t|
      t.string :name
      t.text :note, comment: '備考'
      t.integer :position

      t.timestamps
    end
  end
end
