# This migration comes from enju_subject_engine (originally 20150923173139)
class AddUrlToClassification < ActiveRecord::Migration[5.2]
  def change
    add_column :classifications, :url, :string
  end
end
