Rails.application.routes.draw do
  devise_for :readers
  devise_for :admin_users, controllers: { sessions: "admin/sessions" }, path: 'admin'
  namespace :admin do
    resources :animes
  end

  post 'tweets/:tweet_id/likes' => 'likes#create'
  post 'tweets/:tweet_id/likes/:id' => 'likes#destroy'

  get 'bye/thumb' => 'bye#thumb'
  get 'bye/pink' => 'bye#pink'

  root 'tweets#home'
  get 'tweets/home' => 'tweets#home'
  get 'tweets' => 'tweets#thumb'
  get 'tweets/thumb' => 'tweets#thumb'
  get 'tweets/rankingtotal', to:'tweets#rankingtotal'
  get 'tweets/ranking2000', to:'tweets#ranking2000'
  get 'tweets/ranking2010', to:'tweets#ranking2010'
  get 'tweets/ranking2015', to:'tweets#ranking2015'
  get 'tweets/ranking2020', to:'tweets#ranking2020'
  get 'tweets/ranking2025', to:'tweets#ranking2025'
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
