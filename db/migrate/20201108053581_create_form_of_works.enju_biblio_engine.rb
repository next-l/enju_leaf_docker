# This migration comes from enju_biblio_engine (originally 117)
class CreateFormOfWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :form_of_works do |t|
      t.string :name, null: false
      t.text :note, comment: '備考'
      t.integer :position

      t.timestamps
    end
  end
end
