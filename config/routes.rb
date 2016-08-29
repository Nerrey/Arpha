Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # match '/about', :to => "pairs#about", :as => :about, via: [:get, :post]

  root to: 'statics#index'
end
