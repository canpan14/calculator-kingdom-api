class CreateCardsInDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :cards_in_decks do |t|
      t.references :deck, foreign_key: true
      t.references :card, foreign_key: true
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
