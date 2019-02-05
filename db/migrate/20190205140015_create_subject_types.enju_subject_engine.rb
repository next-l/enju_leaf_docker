# This migration comes from enju_subject_engine (originally 146)
class CreateSubjectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_types do |t|
      t.string :name, null: false
      t.text :display_name
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
