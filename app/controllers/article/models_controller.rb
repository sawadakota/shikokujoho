class Article::ModelsController < ApplicationController
  def index
    @models = Model.order("id DESC")
    @ehime_models = Model.tagged_with("愛媛県")
    @kochi_models = Model.tagged_with("高知県")
    @tokushima_models = Model.tagged_with("徳島県")
    @kagawa_models = Model.tagged_with("香川県")
  end

  def show
    @model = Model.find(params[:id])
    @tags = ActsAsTaggableOn::Tag.most_used(20)
    @like = Like.find_by(user_id: current_user.id) if user_signed_in?
    @likes = Like.where(model_id: params[:id])
    model_ids = Like.group(:model_id).order('count_model_id DESC').limit(5).count(:model_id).keys
    @ranking = model_ids.map { |id| Model.find(id) }
    @newest = Model.order("id DESC")
  end

  def search
    @models = Model.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
