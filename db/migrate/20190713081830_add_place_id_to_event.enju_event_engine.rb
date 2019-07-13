# This migration comes from enju_event_engine (originally 20151201163718)
class AddPlaceIdToEvent < ActiveRecord::Migration[4.2]
  def change
    add_reference :events, :place, index: true
  end
end
