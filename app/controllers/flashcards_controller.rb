class FlashcardsController < ApplicationController
  before_action :ensure_logged_in

  def ensure_logged_in
    if current_user == nil
      return redirect_to new_user_registration_path
    end
  end
  
  def index
    @flashcards = current_user.flashcards.order(:id)
  end

  def show
    @flashcard = Flashcard.find(params[:id])
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.create_flashcard(params[:flashcard][:front], params[:flashcard][:transliteration], params[:flashcard][:back], current_user)
    redirect_to flashcards_index_path
  end

  def study
    @flashcard_shuffled = Flashcard.all.shuffle.first
    # @flashcard = Flashcard.find(params[:id])
    # @flashcard_next = Flashcard.where("id > ?", params[:id]).order(:id).first
  end

  def edit
    @flashcard = current_user.flashcards.find(params[:id])
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
