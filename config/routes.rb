Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
      put "d_com", to: "links#destroy_comments"
    end
    resources :comments

  end





  root "links#index"

end
