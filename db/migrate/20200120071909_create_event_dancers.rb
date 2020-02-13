class CreateEventDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_dancers do |t|
      t.integer :event,   foreign_key: true
      t.integer :dancer,  foreign_key: true

      t.timestamps
    end
  end
end
