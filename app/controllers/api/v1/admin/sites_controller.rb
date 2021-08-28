class Api::V1::Admin::SitesController < ApplicationController
  # 管理人のみアクセス可能
  before_action :authenticate_api_v1_admin!
  def index
    @sites = Site.all 
  end

  def create
    @site = Site.new(site_params)
    tag_list = JSON.parse(params[:tag][:tags])
    @site.admin_id = current_api_v1_admin.id
    @site.tags_save(tag_list)
    if @site.save
      render json: @site, methods: [:image_url], status: :ok
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  def show
    @site = Site.find(params[:id])
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    tag_list = JSON.parse(params[:tag][:tags])
    logger.debug(tag_list)
    # @site.admin_id = current_api_v1_admin.id
    @site.tags_save(tag_list)
    if @site.update(site_params)
      render json: @site, methods: [:image_url], status: :ok
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @site = Site.find(params[:id])
    if @site.destroy
      render json: "ok",status: :ok
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  private

  def site_params
    params.require(:site).permit(:name, :description, :url, :price, :image)
  end

  def tag_params
    params.require(:tag).permit(:tags)
  end

end
