# This migration comes from enju_biblio_engine (originally 20130421093852)
class AddPeriodicalToManifestation < ActiveRecord::Migration[4.2]
  def change
    add_column :manifestations, :periodical, :boolean
  end
end
