class CreateGenreDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_dancers do |t|
      t.integer :genre,   foreign_key: true
      t.integer :dancer, foreign_key: true

      t.timestamps
    end
  end
end
