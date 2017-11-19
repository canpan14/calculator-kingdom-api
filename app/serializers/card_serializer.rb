class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :card_type, :attack, :defense, :description, :spell_effect
end
