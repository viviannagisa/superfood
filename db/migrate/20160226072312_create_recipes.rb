 class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :title
      t.text :image
      t.integer :user_id
      t.text :contents
      t.text :category
      t.timestamps null: false
    end
  end
end
