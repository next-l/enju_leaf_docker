# This migration comes from enju_library_engine (originally 20191119105435)
class AddUserGroupIdToProfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user_group, foreign_key: true
    add_reference :profiles, :library, foreign_key: true
  end
end
