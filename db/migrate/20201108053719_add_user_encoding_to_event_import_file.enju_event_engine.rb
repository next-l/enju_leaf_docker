# This migration comes from enju_event_engine (originally 20140628071719)
class AddUserEncodingToEventImportFile < ActiveRecord::Migration[5.2]
  def change
    add_column :event_import_files, :user_encoding, :string
  end
end
