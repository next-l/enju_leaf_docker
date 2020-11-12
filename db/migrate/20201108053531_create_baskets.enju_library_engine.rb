# This migration comes from enju_library_engine (originally 120)
class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.references :user, index: true
      t.text :note, comment: '備考'
      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
