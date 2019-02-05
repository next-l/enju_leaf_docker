# This migration comes from enju_seed_engine (originally 20150421023923)
class CreateIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :identities do |t|
      t.string :name, index: true
      t.string :email, index: true
      t.string :password_digest
      t.references :profile, type: :uuid

      t.timestamps
    end
  end
end
