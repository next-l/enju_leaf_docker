# This migration comes from enju_library_engine (originally 20190630115523)
class AddLoginBannerTranslationsToLibraryGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :library_groups, :login_banner_translations, :jsonb, default: {}, null: false
    add_column :library_groups, :footer_banner_translations, :jsonb, default: {}, null: false
  end
end
