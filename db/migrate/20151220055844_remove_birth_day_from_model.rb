class RemoveBirthDayFromModel < ActiveRecord::Migration
  def change
    remove_column :models, :birth_day, :string
  end
end
