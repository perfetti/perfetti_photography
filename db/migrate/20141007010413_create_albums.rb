class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :post, index: true
      t.datetime :updated_on
      t.datetime :created_on
      t.references :user, index: true

      t.timestamps
    end
  end
end
