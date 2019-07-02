class FlashcardsController < ApplicationController
  def index
    @flashcards = Flashcard.all.order(:id)
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

  def study
    @flashcard_shuffled = Flashcard.all.shuffle.first
    # @flashcard = Flashcard.find(params[:id])
    # @flashcard_next = Flashcard.where("id > ?", params[:id]).order(:id).first
  end

  def edit
    @flashcard = Flashcard.find(params[:id])
  end

  def update
    @flashcard = Flashcard.find(params[:id])
    flashcard_params = params.require(:flashcard).permit(:front, :transliteration, :back)
    if @flashcard.update(flashcard_params)
      redirect_to flashcards_index_path
    end
  end

  def destroy
    @flashcard = Flashcard.find(params[:id])
    @flashcard.destroy
    redirect_to flashcards_path
  end
end
