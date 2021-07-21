class Api::V1::Public::SiteCommentsController < ApplicationController
  before_action :authenticate_api_v1_public_user!

  def create
    @comment = current_api_v1_public_user.site_comments.new(site_comment_params)
    @comment.site_id = params[:site_id]
    if @comment.save
      redirect_to api_v1_public_site_path(params[:site_id])
    else
      logger.debug(@comment.errors.to_yaml)
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def site_comment_params
    params.require(:site_comment).permit(:review,:comment,:site_id,:id)
  end

end
