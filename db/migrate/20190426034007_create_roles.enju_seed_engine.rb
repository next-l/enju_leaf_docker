# This migration comes from enju_seed_engine (originally 41)
class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table "roles" do |t|
      t.string :name, null: false, index: {unique: true}
      t.jsonb :display_name_translations, default: {}, null: false
      t.text :note
      t.integer :position
      t.timestamps
    end
  end
end
