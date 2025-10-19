class CreateBloggingPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :blogging_posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false
      t.datetime :published_at, null: true

      t.timestamps
    end
  end
end
