# This migration comes from enju_biblio_engine (originally 20120511072422)
class AddAgentIdentifierToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :agent_identifier, :string
    add_index :agents, :agent_identifier
  end
end
