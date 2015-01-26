class DropWidgetsTable < ActiveRecord::Migration
  def change
  	drop_table :widgets
  end
end
