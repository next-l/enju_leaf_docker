# This migration comes from enju_event_engine (originally 20151128142913)
class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :term, index: true
      t.text :city
      t.references :country, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end