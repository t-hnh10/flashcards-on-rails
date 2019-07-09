class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.string :front, limit: 50
      t.string :back, limit: 200
      t.string :transliteration, limit: 50
      t.timestamps
    end
  end
end
