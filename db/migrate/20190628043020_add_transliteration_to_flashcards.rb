class AddTransliterationToFlashcards < ActiveRecord::Migration[5.2]
  def change
    add_column :flashcards, :transliteration, :string, limit: 50
  end
end
