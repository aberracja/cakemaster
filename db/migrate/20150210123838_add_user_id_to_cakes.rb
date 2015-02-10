class AddUserIdToCakes < ActiveRecord::Migration
  def change
    add_column :cakes, :user_id, :integer
  end
end
