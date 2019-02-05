# This migration comes from enju_library_engine (originally 131)
class CreateRequestTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :request_types do |t|
      t.string :name, null: false
      t.jsonb :display_name, default: {}, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
