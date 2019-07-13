# This migration comes from enju_biblio_engine (originally 20110301035123)
class AddPubDateToManifestation < ActiveRecord::Migration[4.2]
  def self.up
    add_column :manifestations, :pub_date, :string
  end

  def self.down
    remove_column :manifestations, :pub_date
  end
end
