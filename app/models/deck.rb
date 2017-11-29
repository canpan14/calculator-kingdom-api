class Deck < ApplicationRecord
  belongs_to :user
  has_many :cards_in_deck, dependent: :destroy
  has_many :cards, through: :cards_in_deck
end
