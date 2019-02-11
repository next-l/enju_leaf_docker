# This migration comes from enju_biblio_engine (originally 20110916103953)
class AddManifestaitonIdToSeriesStatement < ActiveRecord::Migration[5.2]
  def change
    add_reference :series_statements, :manifestation, foreign_key: true, type: :uuid
  end
end
