class Article::TagsController < ApplicationController
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(20)
  end

  def show
    @models = Model.tagged_with(params[:id])
    @tag = params[:id]
    @tags = Model.tagged_with("#{@tag}")
    @sum = 0
    @likes = @tags.each do |tag|
      @sum += tag.likes_count
    end
    @ehime_models = Model.tagged_with("愛媛県")
    @kochi_models = Model.tagged_with("高知県")
    @tokushima_models = Model.tagged_with("徳島県")
    @kagawa_models = Model.tagged_with("香川県")
  end
end
