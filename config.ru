require 'sinatra/base'
require 'sinatra/activerecord'

require './controllers/ApplicationController'
require './controllers/CharicterController'
require './models/charicterModel'


map ('/'){
	run ApplicationController
}

map ('/charicters'){
	run CharicterController
}
