class Genre < ApplicationRecord
  has_many :dancers,  through: :genre_dancers
  has_many :events,  through: :event_genres
end
