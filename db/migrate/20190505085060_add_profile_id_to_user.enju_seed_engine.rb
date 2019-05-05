# This migration comes from enju_seed_engine (originally 20170114174536)
class AddProfileIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :profile, foreign_key: {on_delete: :cascade}, null: false
  end
end
