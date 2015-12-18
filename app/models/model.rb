class Model < ActiveRecord::Base
  has_many :model_images
  accepts_nested_attributes_for :model_images
  acts_as_taggable_on :labels # post.label_list が追加される
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
  has_many :likes
end
