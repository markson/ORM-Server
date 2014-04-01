get '/trips' do
	@partials = ["google_map_api", "ancher-row.js"]
	@trips = Trip.all
	haml :'trip/trips-get'
end

post '/trips' do
	activity_ids = multiple_params_parse("activity_id")
	trip = Trip.create(
		booked_at:params['booked_at']
	)
	if trip.valid?
		trip.agents << Agent.get(params['agent_id'])
		activity_ids.each do |id|
			trip.activities << Activity.get(id)
		end
		if trip.valid?
			trip.save
			redirect to('/trips')
		end
	else
		@message = "Your entry is not valid"
		halt 400, haml(:error)
	end
end


