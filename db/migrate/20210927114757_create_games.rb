class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.text :guesses, array: true, default: []
      t.belongs_to :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
