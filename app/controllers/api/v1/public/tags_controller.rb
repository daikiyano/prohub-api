class Api::V1::Public::TagsController < ApplicationController
  include QiitaService
  include ConnpassService

  def index
    @tags = Tag.first(100)
    render json: @tags 
  end

  def show
    keyword = '%' + params[:id] + '%'
    tags = Tag.arel_table
    @tags = Tag.find_by(tags[:name].matches(keyword))
    @qiita_results = getArticle(params[:id])
    @response = get_events(params[:id])
  end
end
