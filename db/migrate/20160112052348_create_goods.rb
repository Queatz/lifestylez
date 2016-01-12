class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :life_style_id
      t.string :title
      t.string :url
      t.text :description

      t.timestamps null: false
    end
  end
end
