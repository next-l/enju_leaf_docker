# This migration comes from enju_library_engine (originally 20150924115059)
class CreateWithdraws < ActiveRecord::Migration[5.2]
  def change
    create_table :withdraws do |t|
      t.references :basket, foreign_key: true
      t.references :item
      t.references :librarian, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
