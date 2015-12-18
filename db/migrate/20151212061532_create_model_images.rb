class CreateModelImages < ActiveRecord::Migration
  def change
    create_table :model_images do |t|
      t.references     :model
      t.string      :status
      t.string      :image
      t.timestamps null: false
    end
  end
end
