# This migration comes from enju_biblio_engine (originally 20130421164124)
class AddSeriesMasterToSeriesStatement < ActiveRecord::Migration[5.2]
  def change
    add_column :series_statements, :series_master, :boolean
  end
end
