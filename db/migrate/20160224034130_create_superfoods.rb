class CreateSuperfoods < ActiveRecord::Migration
  def change
    create_table :superfoods do |t|
      t.string :name
      t.text :image
      t.text :contents

      t.timestamps null: false
    end
  end
end
