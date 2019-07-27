# This migration comes from enju_event_engine (originally 20190630153136)
class AddDisplayNameTranslationsToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :event_categories, :display_name_translations, :jsonb, default: {}, null: false
    add_column :events, :display_name_translations, :jsonb, default: {}, null: false
  end
end
