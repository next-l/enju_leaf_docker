# This migration comes from enju_biblio_engine (originally 20151125004028)
class AddProfileIdToAgent < ActiveRecord::Migration[5.2]
  def change
    add_reference :agents, :profile, foreign_key: true
  end
end
