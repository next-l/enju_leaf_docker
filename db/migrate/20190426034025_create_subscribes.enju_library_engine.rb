# This migration comes from enju_library_engine (originally 20081006093246)
class CreateSubscribes < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribes do |t|
      t.references :subscription, foreign_key: true, null: false
      t.references :work, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false

      t.timestamps
    end
  end
end
