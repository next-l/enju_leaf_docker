# This migration comes from enju_biblio_engine (originally 20110620173525)
class AddBookstoreIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :bookstore, foreign_key: true
  end
end
