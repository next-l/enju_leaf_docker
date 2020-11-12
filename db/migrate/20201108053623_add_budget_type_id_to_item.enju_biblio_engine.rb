# This migration comes from enju_biblio_engine (originally 20120129020544)
class AddBudgetTypeIdToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :budget_type_id, :integer

  end
end
