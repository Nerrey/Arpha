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
  match '/client', :to => "videos#client", :as => :client, via: [:get, :post]
  match '/server', :to => "videos#server", :as => :server, via: [:get, :post]
  match '/canvideo', :to => "videos#canvideo", :as => :canvideo, via: [:get, :post]
  match '/refresh', :to => "videos#refresh", :as => :refresh, via: [:get, :post]
  match '/recordvideo', :to => "videos#recordvideo", :as => :recordvideo, via: [:get, :post]
  match '/savevideo', :to => "videos#savevideo", :as => :savevideo, via: [:get, :post]
  match '/videotest', :to => "videos#videotest", :as => :videotest, via: [:get, :post]
  match '/flag', :to => "videos#flag", :as => :flag, via: [:get, :post]

  # get 'videotest' => 'videos#videotest'

  root to: 'statics#index'
end
