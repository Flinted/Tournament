require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/event')
require_relative('../models/horse')
require_relative('../models/kingdom')
require_relative('../models/list')
require_relative('../models/knight')

get '/stage' do
  @events = Event.all()
  erb(:'stage/index')
end

post '/stage' do
  @event = Event.find(params['type'].to_i)
  @list = List.new(Knight.all)
  erb(:'stage/new')
end



