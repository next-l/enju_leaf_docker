# This migration comes from enju_biblio_engine (originally 20140823094847)
class AddDimensionsToManifestation < ActiveRecord::Migration[5.2]
  def change
    add_column :manifestations, :dimensions, :text
  end
end
