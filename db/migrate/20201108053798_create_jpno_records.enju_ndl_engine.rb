# This migration comes from enju_ndl_engine (originally 20170116150432)
class CreateJpnoRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :jpno_records do |t|
      t.string :body, index: {unique: true}, null: false
      t.references :manifestation, foreign_key: true, null: false

      t.timestamps
    end
  end
end
