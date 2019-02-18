# This migration comes from enju_biblio_engine (originally 20130429020822)
class AddRootManifestationIdToSeriesStatement < ActiveRecord::Migration[5.2]
  def change
    add_reference :series_statements, :root_manifestation, foreign_ley: {to_table: :manifestations}, type: :uuid
  end
end
