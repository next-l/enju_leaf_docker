# This migration comes from enju_biblio_engine (originally 20121116031206)
class AddFulltextContentToManifestation < ActiveRecord::Migration[5.2]
  def change
    add_column :manifestations, :fulltext_content, :boolean
  end
end
