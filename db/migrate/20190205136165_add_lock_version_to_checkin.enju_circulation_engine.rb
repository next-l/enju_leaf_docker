# This migration comes from enju_circulation_engine (originally 20130519065837)
class AddLockVersionToCheckin < ActiveRecord::Migration[5.2]
  def change
    add_column :checkins, :lock_version, :integer, default: 0, null: false
  end
end
