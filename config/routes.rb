PetsValidation::Application.routes.draw do
  resources :pets
  root "pets#index"

end
