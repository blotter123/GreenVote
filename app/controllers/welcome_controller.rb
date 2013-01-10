class WelcomeController < ApplicationController
	def index
		@vote = Vote.new
		@client_ip = request.remote_ip
		@rooms = Room.all
	end
end
