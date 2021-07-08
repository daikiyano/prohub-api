class Api::V1::Admin::SitesController < ApplicationController
  # 管理人のみアクセス可能
  before_action :authenticate_api_v1_admin!
  def index
    @sites = Site.all
    render json: @sites,methods: [:image_url]
  end

  def create
    @site = Site.new(site_params)
    @site.admin_id = current_api_v1_admin.id
    if @site.save
      render json: @site, methods: [:image_url], status: :ok
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
    params.permit(:name, :description, :url, :price, :image)
  end
end
