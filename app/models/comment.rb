class Comment < ActiveRecord::Base

belongs_to :commentable, polymorphic: true, dependent: :destroy, counter_cache: true
belongs_to :user

end
