Rails.application.routes.draw do
  
  post '/rate' => 'rater#create', :as => 'rate'
  resources :themes
  resources :webinars
  devise_for :users, controllers: {sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # match '/about', :to => "pairs#about", :as => :about, via: [:get, :post]

  match '/test', :to => "statics#test", :as => :test, via: [:get, :post]
  match '/test2', :to => "statics#test2", :as => :test2, via: [:get, :post]
  match '/profile', :to => "users#profile", :as => :profile, via: [:get, :post]
  match '/imgwebinar', :to => "webinars#imgwebinar", :as => :imgwebinar, via: [:get, :post]

  root to: 'statics#index'
end
