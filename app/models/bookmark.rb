class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum: 6}
  validates :movie_id, uniqueness: { scope: :list_id, message: "Impossible d'ajouter 2 fois le même film dans une liste !"}
end
