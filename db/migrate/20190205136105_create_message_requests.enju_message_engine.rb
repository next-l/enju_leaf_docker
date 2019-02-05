# This migration comes from enju_message_engine (originally 20080819181903)
class CreateMessageRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :message_requests do |t|
      t.references :sender
      t.references :receiver
      t.references :message_template
      t.datetime :sent_at
      t.text :body

      t.timestamps
    end
  end
end
