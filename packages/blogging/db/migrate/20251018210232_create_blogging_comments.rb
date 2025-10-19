class CreateBloggingComments < ActiveRecord::Migration[8.0]
  def change
    create_table :blogging_comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :post, null: false, foreign_key: {to_table: :blogging_posts}
      t.text :body, null: false

      t.timestamps
    end
  end
end
