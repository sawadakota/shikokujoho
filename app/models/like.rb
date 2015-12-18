class Like < ActiveRecord::Base
  belongs_to :model, counter_cache: :likes_count
end
