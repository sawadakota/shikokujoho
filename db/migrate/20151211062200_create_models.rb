class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string      :name
      t.string      :college
      t.text      :profile
      t.timestamps null: false
    end
  end
end
