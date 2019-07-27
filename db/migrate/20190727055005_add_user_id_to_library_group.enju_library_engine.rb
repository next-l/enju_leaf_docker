# This migration comes from enju_library_engine (originally 20160813203039)
class AddUserIdToLibraryGroup < ActiveRecord::Migration[4.2]
  def change
    add_reference :library_groups, :user, index: true, foreign_key: true
  end
end
