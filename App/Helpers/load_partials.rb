helpers do
	def load_partials
		@partials = (@template_partials | @partials) if @partials && @template_partials
		@partials = @template_partials if @template_partials && !@partials
		@partials.each do |partial|
			case partial
			when "google_map_api"
				url = "https://maps.googleapis.com/maps/api/js?key=AIzaSyCc4guVzXRpTejeebrOQ_WXAd7rveRFCgg&sensor=false"
				(@results ||=[]) << "%script{type:'text/javascript', src:'#{url}'}"
			when /\.js$/
				(@results ||=[]) <<  "%script{type:'text/javascript', src:'/js/#{partial}'}"
			when /\.css/
				(@results ||=[]) << "%link{href:'/css/#{partial}', type:'text/css', rel:'stylesheet'}"
			end
		end if @partials

		@results.each do |result|
			(@results_string ||="") << (haml(result) + "\n")
		end

		@results_string.chomp
	end
end
