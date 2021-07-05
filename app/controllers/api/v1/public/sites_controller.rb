class Api::V1::Public::SitesController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags
  end

  def show
  end
end
