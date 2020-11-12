# This migration comes from enju_library_engine (originally 20140110131010)
class CreateUserImportResults < ActiveRecord::Migration[5.2]
  def change
    create_table :user_import_results do |t|
      t.references :user_import_file, index: true
      t.references :user, index: true
      t.text :body

      t.timestamps
    end
  end
end
