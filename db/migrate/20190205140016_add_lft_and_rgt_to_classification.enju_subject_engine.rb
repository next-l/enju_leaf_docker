# This migration comes from enju_subject_engine (originally 20110913120629)
class AddLftAndRgtToClassification < ActiveRecord::Migration[5.2]
  def change
    add_column :classifications, :lft, :integer
    add_column :classifications, :rgt, :integer
  end
end
