# This migration comes from enju_seed_engine (originally 20100606065209)
class CreateUserHasRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_has_roles do |t|
      t.references :user, foreign_key: true, null: false
      t.references :role, foreign_key: true, null: false

      t.timestamps
    end
  end
end
