# This migration comes from enju_seed_engine (originally 20141003182825)
class AddDateOfBirthToProfile < ActiveRecord::Migration[4.2]
  def change
    add_column :profiles, :date_of_birth, :datetime
  end
end
