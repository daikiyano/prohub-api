Rails.application.routes.draw do

  namespace :api, format: "json" do
    namespace :v1 do
      # 一般ユーザー用
      namespace :public do
        resources :sites do
          resources :site_comments
        end
        resources :tags
        mount_devise_token_auth_for "User", at: 'auth', controllers: {
          registrations: 'api/v1/public/auth/registrations'
         }
      end

      # 管理ユーザー用
        mount_devise_token_auth_for 'Admin', at: 'admin_auth'
        as :admin do
        # Define routes for Admin within this block.
      end
      namespace :admin do
        resources :sites
        resources :tags
      end
    end
  end
  get 'home/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
