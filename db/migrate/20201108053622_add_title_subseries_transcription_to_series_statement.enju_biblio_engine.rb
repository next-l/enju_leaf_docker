# This migration comes from enju_biblio_engine (originally 20120125152919)
class AddTitleSubseriesTranscriptionToSeriesStatement < ActiveRecord::Migration[5.2]
  def change
    add_column :series_statements, :title_subseries_transcription, :text

  end
end
