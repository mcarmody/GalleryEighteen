class MailingListsController < ApplicationController
	before_action :set_item, only: [:show, :edit, :update, :destroy]
	skip_before_filter :authenticate_user!
	
	# GET /mailing_lists
 	# GET /mailing_lists.json
	def index
		@mailing_list = Mailing_list.all
	end

	def new
		@mailing_list = Mailing_list.new
	end

	def show
	end

	def edit
	end
end
