class CreateEventGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :event_genres do |t|
      t.integer :event,   foreign_key: true
      t.integer :genre,   foreign_key: true

      t.timestamps
    end
  end
end
