class Api::V1::Public::TagsController < ApplicationController
  def index
  end

  def show
    keyword = '%' + params[:id] + '%'
    tags = Tag.arel_table
    @tags = Tag.find_by(tags[:name].matches(keyword))
  end
end
