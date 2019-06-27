Rails.application.routes.draw do
  get 'flashcards/new'
  get 'flashcards/create'
  get 'flashcards/index'
  root to: "flashcards#index"
  get 'flashcards/new', to: 'flashcards#new', as: 'new_flashcard' 
  post 'flashcards', to: 'flashcards#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
