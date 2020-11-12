# This migration comes from enju_circulation_engine (originally 20150106001709)
class CreateDemands < ActiveRecord::Migration[5.2]
  def change
    create_table :demands do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.references :message, foreign_key: true

      t.timestamps null: false
    end
  end
end
