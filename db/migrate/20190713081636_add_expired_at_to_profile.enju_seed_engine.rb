# This migration comes from enju_seed_engine (originally 20140811031145)
class AddExpiredAtToProfile < ActiveRecord::Migration[4.2]
  def change
    add_column :profiles, :expired_at, :datetime
  end
end
