# This migration comes from enju_biblio_engine (originally 20140628073535)
class AddUserEncodingToResourceImportFile < ActiveRecord::Migration[5.2]
  def change
    add_column :resource_import_files, :user_encoding, :string
  end
end
