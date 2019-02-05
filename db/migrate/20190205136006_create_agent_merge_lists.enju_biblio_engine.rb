# This migration comes from enju_biblio_engine (originally 134)
class CreateAgentMergeLists < ActiveRecord::Migration[5.2]
  def change
    create_table :agent_merge_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
