#!/usr/bin/env ruby -wKU

require 'sinatra'
require 'haml'

get '/app.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :app
end

get '/' do
  @title = ""
  haml :index
end