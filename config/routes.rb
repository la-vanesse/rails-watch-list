Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  get 'lists/index'
  get 'lists/new'
  get 'lists/create'
  get 'lists/show'
  get 'index/new'
  get 'index/create'
  get 'index/show'
  get 'index/new'
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'list#index'
  resources :lists, only: [:create, :index, :show, :new] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
end
