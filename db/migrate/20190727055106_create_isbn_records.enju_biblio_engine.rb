# This migration comes from enju_biblio_engine (originally 20160506144040)
class CreateIsbnRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :isbn_records do |t|
      t.string :body, index: {unique: true}, null: false
      t.string :isbn_type
      t.string :source

      t.timestamps
    end
  end
end
