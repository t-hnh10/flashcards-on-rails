Rails.application.routes.draw do
  devise_for :users
  get 'flashcards/new'
  get 'flashcards/create'
  get 'flashcards/index'
  root to: 'flashcards#index'
  get 'flashcards', to: 'flashcards#index', as: 'flashcards'
  get 'flashcards', to: 'flashcards#new', as: 'new_flashcard' 
  post 'flashcards', to: 'flashcards#create'
  get 'flashcards/study', to: 'flashcards#study'
  get 'flashcards/:id/edit', to: 'flashcards#edit', as: 'edit_flashcard'
  patch 'flashcards/:id', to: 'flashcards#update'
  delete 'flashcards/:id', to: 'flashcards#destroy', as: 'delete_flashcard'
  get 'flashcards/:id', to: 'flashcards#show', as: 'flashcard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
