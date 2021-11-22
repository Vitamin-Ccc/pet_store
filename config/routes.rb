Rails.application.routes.draw do
  # get 'breeds/index'
  # get 'breeds/show'
  # get 'breeds/new'
  # get 'breeds/create'
  # get 'breeds/edit'
  # get 'breeds/update'
  # get 'breeds/destroy'
  # get 'pets/index'
  # get 'pets/show'
  # get 'pets/new'
  # get 'pets/create'
  # get 'pets/edit'
  # get 'pets/update'
  # get 'pets/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pets#index"
  resources :pets do
    resources :breeds
  end
  
end
