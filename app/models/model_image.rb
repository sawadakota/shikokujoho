class ModelImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :model
  enum status: %i(main sub)

end
