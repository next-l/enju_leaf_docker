# This migration comes from enju_circulation_engine (originally 20081030023615)
class CreateCarrierTypeHasCheckoutTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :carrier_type_has_checkout_types do |t|
      t.references :carrier_type, foreign_key: true, null: false, type: :uuid
      t.references :checkout_type, foreign_key: true, null: false
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
