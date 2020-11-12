# This migration comes from enju_biblio_engine (originally 20200426164313)
class AddLicenseIdToManifestation < ActiveRecord::Migration[6.0]
  def change
    add_reference :manifestations, :license, null: false, foreign_key: true, default: 1
  end
end
