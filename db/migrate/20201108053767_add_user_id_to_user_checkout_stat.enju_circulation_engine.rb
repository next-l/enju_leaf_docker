# This migration comes from enju_circulation_engine (originally 20140810061942)
class AddUserIdToUserCheckoutStat < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_checkout_stats, :user, foreign_key: true
    add_reference :user_reserve_stats, :user, foreign_key: true
    add_reference :manifestation_checkout_stats, :user, foreign_key: true
    add_reference :manifestation_reserve_stats, :user, foreign_key: true
  end
end
