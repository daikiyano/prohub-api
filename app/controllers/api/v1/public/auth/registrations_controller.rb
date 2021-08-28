
class Api::V1::Public::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController

  private
   def sign_up_params
     params.permit(:username, :email, :password, :password_confirmation)
   end
end
