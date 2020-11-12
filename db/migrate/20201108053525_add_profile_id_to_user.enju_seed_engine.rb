# This migration comes from enju_seed_engine (originally 20190713114940)
class AddProfileIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :profile, foreign_key: true, comment: 'プロフィールID'
  end
end
