# This migration comes from enju_circulation_engine (originally 20130304015019)
class AddPostponedAtToReserve < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :postponed_at, :datetime
  end
end
