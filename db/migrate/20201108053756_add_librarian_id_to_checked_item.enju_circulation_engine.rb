# This migration comes from enju_circulation_engine (originally 20120424103932)
class AddLibrarianIdToCheckedItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :checked_items, :user, foreign_key: true, column_name: :librarian_id
  end
end
