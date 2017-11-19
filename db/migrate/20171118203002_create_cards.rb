class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.integer :cost, null: false
      t.string :card_type, null: false
      t.integer :attack
      t.integer :defense
      t.text :description
      t.string :spell_effect

      t.timestamps
    end
  end
end
