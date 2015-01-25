class ChangeTypeColumnToCakeTypeColumnInCakes < ActiveRecord::Migration
  def change
  	rename_column :cakes, :type, :cake_type
  end
end
