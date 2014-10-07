class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.references :user, index: true
      t.datetime :updated_on
      t.datetime :created_on
      t.boolean :published
      t.boolean :publishable

      t.timestamps
    end
  end
end
