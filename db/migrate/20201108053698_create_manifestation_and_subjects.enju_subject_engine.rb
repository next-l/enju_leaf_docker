# This migration comes from enju_subject_engine (originally 20190823161828)
class CreateManifestationAndSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :manifestation_and_subjects do |t|
      t.references :manifestation, foreign_key: true, null: false
      t.references :subject, foreign_key: true, null: false

      t.timestamps
    end
  end
end
