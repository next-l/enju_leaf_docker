# This migration comes from enju_biblio_engine (originally 20160811102604)
class AddPictureWidthToPictureFile < ActiveRecord::Migration[4.2]
  def change
    add_column :picture_files, :picture_width, :integer
    add_column :picture_files, :picture_height, :integer
  end
end
