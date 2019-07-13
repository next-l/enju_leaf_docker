# This migration comes from enju_seed_engine (originally 20141003181336)
class AddFullNameTranscriptionToProfile < ActiveRecord::Migration[4.2]
  def change
    add_column :profiles, :full_name_transcription, :text
  end
end
