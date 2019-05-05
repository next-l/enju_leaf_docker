# This migration comes from enju_circulation_engine (originally 20141014065831)
class AddShelfIdToCheckout < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkouts, :shelf, foreign_key: true
  end
end
