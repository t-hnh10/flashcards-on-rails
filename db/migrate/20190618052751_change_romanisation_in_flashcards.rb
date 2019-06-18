class ChangeRomanisationInFlashcards < ActiveRecord::Migration[5.2]
  def change
    rename_column :flashcards, :romanisation, :transliteration
  end
end
