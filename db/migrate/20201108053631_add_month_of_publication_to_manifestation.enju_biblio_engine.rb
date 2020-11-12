# This migration comes from enju_biblio_engine (originally 20120418081407)
class AddMonthOfPublicationToManifestation < ActiveRecord::Migration[5.2]
  def change
    add_column :manifestations, :month_of_publication, :integer
  end
end
