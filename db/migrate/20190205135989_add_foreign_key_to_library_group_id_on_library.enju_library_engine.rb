# This migration comes from enju_library_engine (originally 20171126135238)
class AddForeignKeyToLibraryGroupIdOnLibrary < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :libraries, :library_groups, null: false
  end
end
