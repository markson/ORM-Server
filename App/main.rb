require 'rubygems'
require 'bundler'
Bundler.setup(:default, :development)
Bundler.require(:default, :development)
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

Dir["./App/Controllers/*.rb", "./App/Models/*.rb", "./App/Helpers/*.rb"].each {|file| require file}
set :public_folder, "#{File.dirname(__FILE__)}/../static"
enable :partial_underscores

# before do
# 	content_type 'application/json'
# end
DataMapper.auto_upgrade!
DataMapper.auto_migrate!
