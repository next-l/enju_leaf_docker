# This migration comes from enju_circulation_engine (originally 20181022070256)
class AddCheckoutIdToCheckin < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkins, :checkout, foreign_key: true, null: false
  end
end
