Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      # 一般ユーザー用
      # /api/v1/public/auth/sign_in
      namespace :public do
        resources :sites
        mount_devise_token_auth_for "User", at: 'auth'
      end

      # 管理ユーザー用
      # curl -D - /api/v1/admin_auth/sign_in -X POST -d '{"email":"", "password":""}' -H "content-type:application/json"
        mount_devise_token_auth_for 'Admin', at: 'admin_auth'
        as :admin do
        # Define routes for Admin within this block.
      end
    end
  end
  get 'home/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
