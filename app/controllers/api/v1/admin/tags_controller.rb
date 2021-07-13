class Api::V1::Admin::TagsController < ApplicationController
  before_action :authenticate_api_v1_admin!
  def index
    @tags = Tag.all
    render json: @tags 
  end
end
