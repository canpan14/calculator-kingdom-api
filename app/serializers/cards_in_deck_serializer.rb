class CardsInDeckSerializer < ActiveModel::Serializer
  attributes :id, :deck_id, :card_id, :count
  has_one :card
end
