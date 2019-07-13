# This migration comes from enju_library_engine (originally 20150221063719)
class AddSettingsToLibraryGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :library_groups, :settings, :text
  end
end
