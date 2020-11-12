# This migration comes from enju_seed_engine (originally 20190713115451)
class AddFullNameTranslationsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :full_name_translations, :jsonb, default: {}, null: false
  end
end
