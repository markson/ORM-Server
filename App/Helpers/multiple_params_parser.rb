helpers do
	def multiple_params_parse(param_name)
		raw_param = self.env['rack.request.form_vars']
		reg = /#{param_name}=(\d*)/
		param_values = raw_param.scan(reg).map{|ary| ary.first}
	end
end
