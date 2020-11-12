# This migration comes from enju_biblio_engine (originally 20200426165544)
class AddUrlToLicense < ActiveRecord::Migration[6.0]
  def change
    add_column :licenses, :url, :string, index: {unique: true}
  end
end
