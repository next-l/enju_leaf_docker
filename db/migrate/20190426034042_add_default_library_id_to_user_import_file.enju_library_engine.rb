# This migration comes from enju_library_engine (originally 20140720170714)
class AddDefaultLibraryIdToUserImportFile < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_import_files, :default_library
  end
end
