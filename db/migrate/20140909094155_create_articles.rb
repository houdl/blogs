class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :avatar
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
    add_foreign_key :articles, :users
  end
end
