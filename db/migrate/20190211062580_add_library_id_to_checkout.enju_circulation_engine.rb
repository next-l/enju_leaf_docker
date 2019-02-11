# This migration comes from enju_circulation_engine (originally 20141020120523)
class AddLibraryIdToCheckout < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkouts, :library, foreign_key: true, type: :uuid
  end
end
