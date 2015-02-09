class AddPictureToCakes < ActiveRecord::Migration
  def change
    add_column :cakes, :picture, :string
  end
end
