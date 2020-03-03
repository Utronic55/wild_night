class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name,          index:true, nill:false
      t.integer :genre_id,        index:true, foreign_key: true
      t.string :area,          index:true
      t.datetime :date
      t.longtext :introduction
      t.string :link1
      t.string :link2
      t.string :link3
      t.timestamps
    end
  end
end
