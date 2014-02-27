class StaticPagesController < ApplicationController
	skip_before_filter :authenticate_user!

	def index
	end

	def home
		@micropost = current_user.microposts.build if signed_in?
	end

end
