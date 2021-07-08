class Api::V1::Admin::SitesController < ApplicationController
  # 管理人のみアクセス可能
  before_action :authenticate_admin!
  def index
    @sites = Site.all
  end

  def create
    @site = Site.new(site_params)
    @site.admin_id = current_admin.id
    if @site.save
      render json: @site, status: :ok
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def site_params
    params.permit(:name, :description, :url, :price,:admin_id)
  end
end
