class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name, :cards
  has_one :user
end
