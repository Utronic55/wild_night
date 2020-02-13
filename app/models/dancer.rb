class Dancer < ApplicationRecord
  has_many :genres,  through: :genre_dancers
  has_many :events,  through: :event_dancers

end
