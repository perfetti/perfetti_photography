class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true
      t.text :state

      t.timestamps
    end
  end
end
