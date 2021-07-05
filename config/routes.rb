Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      namespace :public do
        get 'sites/index'
        get 'sites/show'
      end
    end
  end
  get 'home/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
