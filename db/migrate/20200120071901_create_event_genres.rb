class CreateEventGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :event_genres do |t|
      t.integer :event_id,   foreign_key: true
      t.integer :genre_id,   foreign_key: true
      t.timestamps
    end
  end
end
