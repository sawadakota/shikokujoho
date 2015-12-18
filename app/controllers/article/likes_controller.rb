class Article::LikesController < ApplicationController
  def create
    @model = Model.find(params[:model_id])
    # Like.create(user_id: current_user.id, model_id: params[:model_id])
    @likes = Like.where(model_id: params[:model_id])
    @like = current_user.likes.create(model_id: params[:model_id])
    render layout: false
  end

  def destroy
    @model = Model.find(params[:id])
    @like = current_user.likes.find_by(model_id: params[:id])
    @likes = Like.where(model_id: params[:id])
    @like.destroy
    render layout: false
  end
end
