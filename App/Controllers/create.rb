get '/create/activity' do
	@companies = Company.all
	haml :'create/activity'
end

get '/create/company' do
	haml :'create/company'
end

get '/create/customer' do
	haml :'create/customer'
end

get '/create/agent' do
	haml :'create/agent'
end

get '/create/trip' do
	@activities = Activity.all
	@agents = Agent.all
	haml :'create/trip'
end

