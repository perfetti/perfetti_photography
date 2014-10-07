class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
      t.references :album, index: true
      t.string :title
      t.text :description
      t.string :asset_url
      t.datetime :created_at
      t.datetime :updated_on
      t.references :user, index: true

      t.timestamps
    end
  end
end
