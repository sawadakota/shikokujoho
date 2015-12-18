class Article::ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show
    @model = Model.find(params[:id])
    @tags = ActsAsTaggableOn::Tag.most_used(20)
    @like = Like.find_by(user_id: current_user.id)
    @likes = Like.where(model_id: params[:id])
  end

  def search
    @models = Model.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
