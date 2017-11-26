class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :cards, array: true, default: []

      t.timestamps
    end
  end
end
