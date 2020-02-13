class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name,             index:true,null:false
      t.integer :dancer,          index:true,foreign_key: true
      t.integer :event,           index:true,foreign_key: true
      t.timestamps
    end
  end
end
