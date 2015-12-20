class AddBirthdayToModel < ActiveRecord::Migration
  def change
    add_column :models, :lovetype, :string
    add_column :models, :highschool, :string
    add_column :models, :charmpoint, :string
    add_column :models, :personality, :string
  end
end
