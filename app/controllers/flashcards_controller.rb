class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.create_flashcard(params[:flashcard][:front], params[:flashcard][:transliteration], params[:flashcard][:transliteration])
    redirect_to flashcards_index_path
  end
end
