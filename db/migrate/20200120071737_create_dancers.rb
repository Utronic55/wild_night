class CreateDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :dancers do |t|
      t.string :name,          index:true,nill:false
      t.string :team
      t.string :area
      t.string :image
      t.string :link1
      t.string :link2
      t.string :link3
      t.text :career
      t.text :text
      t.integer :genre,        foreign_key: true
      

      t.timestamps
    end
  end
end
