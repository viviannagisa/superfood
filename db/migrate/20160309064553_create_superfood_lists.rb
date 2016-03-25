class CreateSuperfoodLists < ActiveRecord::Migration
  def change
    create_table :superfood_lists do |t|
      t.string :title
      t.text :contents
      t.text :image_url


      t.timestamps null: false
    end
  end
end
