# This migration comes from enju_event_engine (originally 20100925074639)
class CreateEventImportResults < ActiveRecord::Migration[5.2]
  def change
    create_table :event_import_results do |t|
      t.references :event_import_file
      t.references :event
      t.text :body

      t.timestamps
    end
  end
end
