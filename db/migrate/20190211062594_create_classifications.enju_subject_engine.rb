# This migration comes from enju_subject_engine (originally 142)
class CreateClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :classifications do |t|
      t.references :parent, foreign_key: {to_table: :classifications}
      t.string :category, index: true, null: false
      t.text :note
      t.references :classification_type, null: false

      t.timestamps
    end
  end
end
