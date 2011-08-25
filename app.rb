require 'sinatra'
require 'haml'

get '/*.css' do
	set :views, File.dirname(__FILE__) + '/sass'
  content_type 'text/css', :charset => 'utf-8'
  filename = params[:splat].first
  sass filename.to_sym
end

get '/*.js' do
	set :views, File.dirname(__FILE__) + '/coffee'
	filename = params[:splat].first
	coffee filename.to_sym
end

get '/' do
	set :views, File.dirname(__FILE__) + '/haml'
  @title = ""
  haml :index
end
