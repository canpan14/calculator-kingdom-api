class Card < ApplicationRecord
  has_many :cards_in_deck, dependent: :destroy
end
