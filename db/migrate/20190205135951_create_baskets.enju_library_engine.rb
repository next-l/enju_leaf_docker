# This migration comes from enju_library_engine (originally 120)
class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.references :user, foreign_key: true
      t.text :note
      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
