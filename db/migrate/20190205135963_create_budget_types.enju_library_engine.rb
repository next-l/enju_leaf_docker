# This migration comes from enju_library_engine (originally 20120129014038)
class CreateBudgetTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_types do |t|
      t.string :name, index: {unique: true}, null: false
      t.jsonb :display_name, default: {}, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
