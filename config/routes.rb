Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome
  scope module: 'frontend' do
    resources :articles
  end
end
