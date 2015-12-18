class Article::ModelsController < ApplicationController
  def index
    @models = Model.all
  end

  def show
    @model = Model.find(params[:id])
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def search
    @models = Model.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
