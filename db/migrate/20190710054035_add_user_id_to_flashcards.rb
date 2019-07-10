class AddUserIdToFlashcards < ActiveRecord::Migration[5.2]
  def change
    add_reference :flashcards, :user, foreign_key: true
  end
end
