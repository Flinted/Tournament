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
  ref = params['type'].to_i
  @event = Event.find(ref)
  @event.populate
  @list = List.new(Knight.all)
  erb(:'stage/new')
end

post '/stage/:id/new' do
  @event = Event.find(params['id'])
  knight = Knight.find(params['knight'])
  @list = List.new(Knight.all)
  @event.tracker(knight.id)
  @event.populate()
  # binding.pry
  erb(:'stage/new')
end



