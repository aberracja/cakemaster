class CreateCakes < ActiveRecord::Migration
  def change
    create_table :cakes do |t|
      t.string :name
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
