module Article::LikesHelper
  def like_user
    current_user.likes(model_id: @model.id)
  end
end
