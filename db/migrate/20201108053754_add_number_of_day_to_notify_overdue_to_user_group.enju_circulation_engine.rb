# This migration comes from enju_circulation_engine (originally 20110627122938)
class AddNumberOfDayToNotifyOverdueToUserGroup < ActiveRecord::Migration[5.2]
  def self.up
    add_column :user_groups, :number_of_day_to_notify_overdue, :integer, default: 0, null: false
    add_column :user_groups, :number_of_day_to_notify_due_date, :integer, default: 0, null: false
    add_column :user_groups, :number_of_time_to_notify_overdue, :integer, default: 0, null: false
  end

  def self.down
    remove_column :user_groups, :number_of_time_to_notify_overdue
    remove_column :user_groups, :number_of_day_to_notify_due_date
    remove_column :user_groups, :number_of_day_to_notify_overdue
  end
end
