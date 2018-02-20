Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'cocktails#index'

  resources :cocktails, except: [:destroy] do
   # delete 'cocktails/:cocktail_id/doses/:id', to: 'doses#destroy', as: :dose
  resources :doses, except: [:update, :edit]

  end


end
