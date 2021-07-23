class Api::V1::Public::ArticlesController < ApplicationController
  before_action :authenticate_api_v1_public_user!
  def index
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    tag_list = JSON.parse(params[:tag][:tags])
    @article.user_id = current_api_v1_public.id
    @article.tags_save(tag_list)
    if @article.save
      redirect_to api_v1_public_articles_path
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destory
  end

  private

  def article_params
    params.require(:article).permit(:title,:body)
  end

  def tag_params
    params.require(:tag).permit(:tags)
  end

end
