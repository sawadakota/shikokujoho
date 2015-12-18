class AddFuriganaToModel < ActiveRecord::Migration
  def change
    add_column :models, :furigana, :string
  end
end
