# This migration comes from enju_biblio_engine (originally 20091025080447)
class CreateLicenses < ActiveRecord::Migration[5.2]
  def change
    create_table :licenses, comment: 'ライセンス' do |t|
      t.string :name, null: false
      t.text :note, comment: '備考'
      t.integer :position

      t.timestamps
    end
  end
end
