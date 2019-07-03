class FlashcardListItemsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @flashcards = current_user.flashcards
        # @flashcards = FlashcardListItem.order_by_updated_at(current_user)
    end
    
    def destroy
        item_id = FlashcardListItem.book_list_item_id(current_user,params[:id])
        FlashcardListItem.destroy(item_id)
        redirect_to flashcard_list_items_path
    end
end
