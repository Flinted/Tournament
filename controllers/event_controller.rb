require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/event')
require_relative('../models/horse')
require_relative('../models/kingdom')
require_relative('../models/list')

# index
get '/events' do
  @events = Event.all()
  erb(:'events/index')
end

#new
get '/events/new' do
  @kingdoms = Kingdom.all
  @horses = Horse.all
  erb(:'events/new')
end

get 'events/stage' do
  @knights =Knight.all
  @kingdoms=Kingdom.all
  @events = Event.all
  erb('events/stage')
end

# create
post '/events' do
  @event = Event.new(params)
  @event.save()
  erb(:'events/create')
end

# show
get '/events/:id' do
  @event = Event.find(params[:id])
  # @kingdoms = Kingdom.all
  erb(:'events/show')
end

post '/events/:id/delete' do
  Event.destroy(params[:id])
  redirect to("/events")
end

get '/events/:id/edit' do
  @event = Event.find(params[:id])
  @kingdoms= Kingdom.all()
  erb(:'events/edit')
end

post '/events/:id' do
  @event = Event.update(params)
  redirect to("/events/#{params[:id]}")
end



