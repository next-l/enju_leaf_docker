# This migration comes from enju_subject_engine (originally 20130504133816)
class AddManifestationIdToSubject < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :manifestation, foreign_key: true
  end
end
