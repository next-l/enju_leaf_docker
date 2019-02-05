# This migration comes from enju_circulation_engine (originally 20111129044509)
class AddPickupLocationToReserve < ActiveRecord::Migration[5.2]
  def change
    add_reference :reserves, :pickup_location, foreign_key: {to_table: :libraries}, type: :uuid
  end
end
