ActiveAdmin.register Building do
  index do
  	column :name
  	default_actions
  end

  show do |building| 
  	div do
  		table_for building.rooms do
  			column :name
  		end
  		form :partial => "form"
  	end
  end
 end

