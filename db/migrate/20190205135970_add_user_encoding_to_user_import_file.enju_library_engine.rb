# This migration comes from enju_library_engine (originally 20140628072217)
class AddUserEncodingToUserImportFile < ActiveRecord::Migration[5.2]
  def change
    add_column :user_import_files, :user_encoding, :string
  end
end
