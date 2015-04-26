class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :article, index: true, null: false
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
    add_foreign_key :comments, :articles
    add_foreign_key :comments, :users
  end
end
