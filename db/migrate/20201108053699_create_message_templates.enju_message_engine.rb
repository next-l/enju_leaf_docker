# This migration comes from enju_message_engine (originally 149)
class CreateMessageTemplates < ActiveRecord::Migration[5.2]
  def self.up
    create_table :message_templates do |t|
      t.string :status, null: false
      t.text :title, null: false
      t.text :body, null: false
      t.integer :position
      t.string :locale, default: I18n.default_locale.to_s

      t.timestamps
    end
    add_index :message_templates, :status, unique: true
  end

  def self.down
    drop_table :message_templates
  end
end
