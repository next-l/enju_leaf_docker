# This migration comes from enju_biblio_engine (originally 20120410104851)
class AddYearOfPublicationToManifestation < ActiveRecord::Migration[5.2]
  def change
    add_column :manifestations, :year_of_publication, :integer
  end
end
