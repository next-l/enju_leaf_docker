# This migration comes from enju_biblio_engine (originally 20110918162329)
class AddNoteToSeriesStatement < ActiveRecord::Migration[5.2]
  def self.up
    add_column :series_statements, :note, :text
  end

  def self.down
    remove_column :series_statements, :note, comment: '備考'
  end
end
