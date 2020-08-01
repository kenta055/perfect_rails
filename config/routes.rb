Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  resource :retirements
  root 'welcome#index'
  get 'welcome/index'
  get 'auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  match '*path' => 'application#error404', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
