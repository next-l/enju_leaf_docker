# This migration comes from enju_library_engine (originally 20140720170735)
class AddDefaultUserGroupIdToUserImportFile < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_import_files, :default_user_group, type: :uuid
  end
end
