class Admin::ModelsController < ApplicationController
  before_action :authenticate_user!
  def new
    @model = Model.new
    @model.model_images.build
  end

  def create
    binding.pry
    Model.create(create_params)
  end

  def edit
    @model = Model.find(params[:id])
  end

  def update
    @model.update(create_params)
    redirect_to :root
  end

  private
  def create_params
    tag_list = params[:tag_list]
    params.require(:model).permit(:name, :profile, :college, model_images_attributes: [:image, :status, :id]).merge(tag_list: tag_list)
  end
end
