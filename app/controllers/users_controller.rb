class UsersController < ApplicationController
	def index
		@users=User.page params[:page]
		respond_to do |format|
			format.html
			format.json { render :json => @users }
		end
	end
end
