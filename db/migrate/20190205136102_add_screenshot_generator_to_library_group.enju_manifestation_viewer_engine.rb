# This migration comes from enju_manifestation_viewer_engine (originally 20160813191820)
class AddScreenshotGeneratorToLibraryGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :library_groups, :screenshot_generator, :string
  end
end
