# This migration comes from enju_circulation_engine (originally 20130303124821)
class AddRetainedAtToReserve < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :retained_at, :datetime
  end
end
