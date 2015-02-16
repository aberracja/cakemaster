class AddCommentsCountToCakes < ActiveRecord::Migration
  def self.up
  	add_column :cakes, :comments_count, :integer, :default => 0
  
  	Cake.reset_column_information
  	Cake.all.each do |p|
  		p.update_attribute :comments_count, p.comments.length
  	end
  end

  def self.down
  	remove_column :cakes, :comments_count
  end


end