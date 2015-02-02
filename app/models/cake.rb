class Cake < ActiveRecord::Base
	validates :name, presence: true, length: { minimum: 3, maximum: 100 }
	validates :cake_type, presence: true
	validates :description, presence: true, length: { minimum: 100, maximum: 5000 }
	
end
