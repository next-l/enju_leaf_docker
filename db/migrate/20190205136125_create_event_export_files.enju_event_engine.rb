# This migration comes from enju_event_engine (originally 20140812152348)
class CreateEventExportFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :event_export_files do |t|
      t.references :user, foreign_key: true
      t.attachment :event_export
      t.datetime :executed_at

      t.timestamps
    end
  end
end
