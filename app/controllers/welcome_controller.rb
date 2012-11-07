class WelcomeController < ApplicationController
	def index
		@vote = Vote.new
		@client_ip = request.remote_ip
		@rooms = Room.all
		@rooms.each do |room| 
			#room.votes = room.Vote.where("created_at = ?",30.minutes.ago)
		end
	end
end
