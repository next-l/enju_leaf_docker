# This migration comes from enju_library_engine (originally 20150506105356)
class AddErrorMessageToUserImportResult < ActiveRecord::Migration[5.2]
  def change
    add_column :user_import_results, :error_message, :text
  end
end
