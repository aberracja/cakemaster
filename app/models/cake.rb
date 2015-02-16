class Cake < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3, maximum: 100 }
	validates :cake_type, presence: true
	validates :description, presence: true, length: { minimum: 10, maximum: 5000 }
	
	mount_uploader :picture, PictureUploader

	belongs_to :user
	has_many :comments, as: :commentable, dependent: :destroy 
end
