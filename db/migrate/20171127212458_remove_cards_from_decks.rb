class RemoveCardsFromDecks < ActiveRecord::Migration[5.1]
  def change
    remove_column :decks, :cards, :array
  end
end
