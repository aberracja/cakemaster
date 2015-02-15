class Cakes::CommentsController < CommentsController

	before_action :set_commentable

	private

		def set_commentable
			@commentable = Cake.find(params[:cake_id])
		end

end