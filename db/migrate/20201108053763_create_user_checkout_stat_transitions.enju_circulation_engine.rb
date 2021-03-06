# This migration comes from enju_circulation_engine (originally 20140528045518)
class CreateUserCheckoutStatTransitions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_checkout_stat_transitions do |t|
      t.string :to_state
      t.jsonb :metadata, default: {}
      t.integer :sort_key
      t.integer :user_checkout_stat_id
      t.timestamps
    end

    add_index :user_checkout_stat_transitions, :user_checkout_stat_id
    add_index :user_checkout_stat_transitions, [:sort_key, :user_checkout_stat_id], unique: true, name: "index_user_checkout_stat_transitions_on_sort_key_and_stat_id"
  end
end
