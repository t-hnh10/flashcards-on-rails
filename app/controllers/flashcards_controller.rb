class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all
  end

  def show
    @flashcard = Flashcard.find(params[:id])
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.create_flashcard(params[:flashcard][:front], params[:flashcard][:transliteration], params[:flashcard][:back])
    redirect_to flashcards_index_path
  end

  def destroy
    @flashcard = Flashcard.find(params[:id])
    @flashcard.destroy
    redirect_to flashcards_path
  end
end
