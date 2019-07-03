class FlashcardListItem < ApplicationRecord
  belongs_to :user
  belongs_to :flashcard

  def self.flashcard_list_item_id(current_user,flashcard)
    return FlashcardListItem.where("book_id = ? AND user_id = ?",flashcard,current_user.id).first.id
  end

  def self.order_by_updated_at(current_user)
    return current_user.flashcards.order(updated_at: :desc)
  end
end
