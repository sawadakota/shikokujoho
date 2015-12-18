class Article::TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @models = Model.tagged_with(params[:id])
    @tag = params[:id]
  end
end
