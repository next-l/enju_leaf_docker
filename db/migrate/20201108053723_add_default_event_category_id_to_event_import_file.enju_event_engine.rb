# This migration comes from enju_event_engine (originally 20140814070854)
class AddDefaultEventCategoryIdToEventImportFile < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_import_files, :default_event_category
  end
end
