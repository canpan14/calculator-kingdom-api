# cards table
cards_to_create = [
  { name: 'Swordsman', cost: 5, card_type: 'attack', attack: 2, defense: 1, description: 'Basic stabby guy', spell_effect: '' },
  { name: 'Assassin', cost: 11, card_type: 'attack', attack: 4, defense: 0, description: 'Sneaky stabby guy', spell_effect: '' },
  { name: 'Flaming Pigs', cost: 1, card_type: 'attack', attack: 1, defense: 0, description: 'Oink Oink', spell_effect: '' },
  { name: 'Trebuchet', cost: 23, card_type: 'defense', attack: 2, defense: 4, description: 'Can launch a 90kg stone over 300m', spell_effect: '' },
  { name: 'Pikeman', cost: 14, card_type: 'defense', attack: 1, defense: 3, description: 'Harmless if you do not run into them', spell_effect: '' },
  { name: 'Archer', cost: 9, card_type: 'defense', attack: 3, defense: 1, description: 'Pointy object shooter', spell_effect: '' },
  { name: 'Boiling Oil', cost: 36, card_type: 'defense', attack: 0, defense: 7, description: 'Nothing wrong with deep fried people for breakfast', spell_effect: '' },
  { name: 'Village Idiot', cost: 18, card_type: 'attack', attack: 4, defense: 1, description: 'Death by annoyance, an underrated attack tactic', spell_effect: '' }
]

cards_to_create.each do |card|
  found_card = Card.where(name: card[:name]).first_or_initialize
  if found_card.new_record?
    Card.create(card)
  else
    found_card.update(card)
  end
end
