class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
  has_many :cards_in_deck
  has_many :cards, through: :cards_in_deck
end
