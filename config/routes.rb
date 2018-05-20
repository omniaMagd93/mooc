Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount LikeDislike::Engine, at: '/'
  mount Commontator::Engine => '/commontator'
  mount Ckeditor::Engine => '/ckeditor'
  resources :lectures do
  member do
    put "like", to: "lectures#upvote"
    put "dislike", to: "lectures#downvote"
    get :spam
  end
end
  resources :courses
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
