Rails.application.routes.draw do
  root 'mytweets#index'
  resources :mytweets do
    collection do
      post :confirm
    end
  end
end
