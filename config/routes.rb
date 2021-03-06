# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cards_in_decks, except: %i[new edit index show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
  resources :cards, only: %i[index show]
  resources :decks, except: %i[new edit]
end
