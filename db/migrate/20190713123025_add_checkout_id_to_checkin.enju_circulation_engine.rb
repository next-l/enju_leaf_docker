# This migration comes from enju_circulation_engine (originally 20190713114724)
class AddCheckoutIdToCheckin < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkins, :checkin, foreign_key: true
  end
end
