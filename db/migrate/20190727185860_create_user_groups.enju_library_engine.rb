# This migration comes from enju_library_engine (originally 77)
class CreateUserGroups < ActiveRecord::Migration[4.2]
  def change
    create_table :user_groups do |t|
      t.string :name, not_null: true
      t.text :display_name
      t.text :note
      t.integer :position
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
