require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/knight')
require_relative('../models/horse')

@minimenu = '<a href="/kingdoms/new">New</a><a href="/kingdoms">List</a>'

# index
get '/kingdoms' do
  @kingdoms = Kingdom.all()
  erb(:'kingdoms/index')
end

#new
get '/kingdoms/new' do
  @kingdoms = Kingdom.all
  @knights = Knight.all
  erb(:'kingdoms/new')
end

# create
post '/kingdoms' do
  @kingdom = Kingdom.new(params)
  @kingdom.save()
  erb(:'kingdoms/create')
end

# show
get '/kingdoms/:id' do
  @kingdom = Kingdom.find(params[:id])
  erb(:'kingdoms/show')
end

post '/kingdoms/:id/delete' do
  Kingdom.destroy(params[:id])
  redirect to("/kingdoms")
end

get '/kingdoms/:id/edit' do
  @kingdom = Kingdom.find(params[:id])
  erb(:'kingdoms/edit')
end

post '/kingdoms/:id' do
  @kingdom = Kingdom.update(params)
  redirect to("/kingdoms/#{params[:id]}")
end


