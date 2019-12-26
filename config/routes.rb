Rails.application.routes.draw do
  
  resources :authors do
    resources :recipes
  end
  
  resources :recipes do
    resources :ingredients
  end
  
  root 'authors#index'
  # For details on the DSexitL available within this file, see https://guides.rubyonrails.org/routing.html
end
