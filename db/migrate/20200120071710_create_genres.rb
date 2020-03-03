class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name,             index:true,null:false
      t.longtext :text
      t.timestamps
    end
  end
end
