# This migration comes from enju_circulation_engine (originally 20190706052525)
class AddDisplayNameTranslationsToCirculationStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :circulation_statuses, :display_name_translations, :jsonb, default: {}, null: false
  end
end
