Rails.application.routes.draw do
  get 'flashcards/index'
  root to: "flashcards#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
