# frozen_string_literal: true

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

    # 認証時のカスタムレスポンス
  # def token_validation_response
  #   {admin: true}
  # end
  def as_json(options={})
    super(options).merge({admin: true})
  end
end
