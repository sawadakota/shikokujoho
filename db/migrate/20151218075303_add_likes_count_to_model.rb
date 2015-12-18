class AddLikesCountToModel < ActiveRecord::Migration
  def change
    add_column :models, :likes_count, :integer
  end
end
