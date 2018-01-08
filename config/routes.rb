Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get "/", :to => "devise/sessions#new"
  end
  # root :to => "devise/sessions#new"
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
