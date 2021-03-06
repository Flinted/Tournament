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

#shows drop down for adding knights 
post '/stage' do
  ref = params['type'].to_i
  @event = Event.find(ref)
  @event.populate
  @list = List.new(Knight.all)
  erb(:'stage/new')
end

# loops drop down
post '/stage/:id/new' do
  @event = Event.find(params['id'])
  knight = Knight.find(params['knight'])
  @list = List.new(Knight.all)
  @event.tracker(knight.id)
  @event.populate()
  erb(:'stage/new')
end

post '/stage/:eid/:cid/remove' do
  @event = Event.find(params['eid'].to_i)
  @event.drop_competitor(params['cid'].to_i)
  @event.populate()
  @list= List.new(Knight.all)
  erb(:'stage/new')
end

post '/stage/:id/run' do
  @event = Event.find(params['id'])
  @event.populate()
  @event.run_event()
  @event.clear()
  redirect to "/events/#{@event.id}"
end


