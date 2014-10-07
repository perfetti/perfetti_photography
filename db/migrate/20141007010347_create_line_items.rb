class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :photograph, index: true
      t.integer :price_cents
      t.references :cart, index: true
      t.references :user, index: true
      t.text :state

      t.timestamps
    end
  end
end
