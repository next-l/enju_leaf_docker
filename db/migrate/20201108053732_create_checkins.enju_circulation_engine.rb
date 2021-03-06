# This migration comes from enju_circulation_engine (originally 32)
class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins, comment: '返却' do |t|
      t.references :item, foreign_key: true, null: false, comment: '返却資料の所蔵ID'
      t.references :librarian, foreign_key: {to_table: :users}, comment: '返却担当者ユーザID'
      t.references :basket, comment: '返却セッションID'
      t.timestamps
    end
  end
end
