class ApplicationController < Sinatra::Base

require 'bundler'
Bundler.require()

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql', 
	:database => 'digits'
)


	get '/' do
		@page = "hello"
	end

end
