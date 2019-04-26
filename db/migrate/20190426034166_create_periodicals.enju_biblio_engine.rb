# This migration comes from enju_biblio_engine (originally 20190311154610)
class CreatePeriodicals < ActiveRecord::Migration[5.2]
  def change
    create_table :periodicals do |t|
      t.text :original_title, null: false
      t.references :frequency, foreign_key: true, null: false

      t.timestamps
    end
  end
end
