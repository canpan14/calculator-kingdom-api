# cards table
cards_to_create = [
  { name: 'Swordsman', cost: 5, card_type: 'attack', attack: 2, defense: 1, description: 'Basic stabby guy', spell_effect: '' },
  { name: 'Trebuchet', cost: 23, card_type: 'attack', attack: 5, defense: 0, description: 'Can launch a 90kg stone over 300m', spell_effect: '' },
  { name: 'Pikeman', cost: 14, card_type: 'defense', attack: 1, defense: 3, description: 'Will not do much harm if you do not run into them', spell_effect: '' }
]

cards_to_create.each do |card|
  found_card = Card.where(name: card[:name]).first_or_initialize
  if found_card.new_record?
    Card.create(card)
  else
    found_card.update(card)
  end
end
