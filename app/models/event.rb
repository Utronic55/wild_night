class Event < ApplicationRecord
  has_many :genres,  through: :event_genres
  has_many :dancers,  through: :event_dancers
end
