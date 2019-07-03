class CreateFlashcardListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcard_list_items do |t|
      t.references :user, foreign_key: true
      t.references :flashcard, foreign_key: true

      t.timestamps
    end
  end
end
