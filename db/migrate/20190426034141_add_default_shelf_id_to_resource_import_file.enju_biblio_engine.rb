# This migration comes from enju_biblio_engine (originally 20140721151416)
class AddDefaultShelfIdToResourceImportFile < ActiveRecord::Migration[5.2]
  def change
    add_reference :resource_import_files, :default_shelf
  end
end
