# This migration comes from enju_message_engine (originally 20110913115320)
class AddLftAndRgtToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :lft, :integer
    add_column :messages, :rgt, :integer
  end
end
