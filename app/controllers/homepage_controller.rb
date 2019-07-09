class HomepageController < ApplicationController
  def index
    if current_user
      return redirect_to flashcards_index_path
    end
  end
end
