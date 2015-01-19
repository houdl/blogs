class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :avatar
      t.integer :user_id

      t.timestamps
    end
  end
end
