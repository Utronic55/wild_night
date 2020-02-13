class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name,          index:true, nill:false
      t.integer :genre,        index:true, foreign_key: true
      t.string :area,          index:true
      t.integer :dancer,       index:true, foreign_key: true
      t.datetime :date
      t.text :text
      t.string :link1
      t.string :link2
      t.string :link3
      t.timestamps
    end
  end
end
