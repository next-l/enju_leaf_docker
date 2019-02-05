# This migration comes from enju_subject_engine (originally 20130504143515)
class AddManifestationIdToClassification < ActiveRecord::Migration[5.2]
  def change
    add_reference :classifications, :manifestation, foreign_key: true, type: :uuid
  end
end
