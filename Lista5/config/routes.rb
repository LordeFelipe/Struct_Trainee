Rails.application.routes.draw do
  root 'application#homepage'
  resources :albums
  resources :musics
  resources :music_styles, only: [:index]

  resources :calendar, only: [:index]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
