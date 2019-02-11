# This migration comes from enju_library_engine (originally 20160813192542)
class AddPubYearFacetRangeIntervalToLibraryGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :library_groups, :pub_year_facet_range_interval, :integer, default: 10
  end
end
