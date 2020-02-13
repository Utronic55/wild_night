class GenreDancer < ApplicationRecord
  belongs_to :genre
  belongs_to :dancer
end
