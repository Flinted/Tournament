require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/knight')
require_relative('../models/horse')
require_relative('../models/kingdom')

# index
get '/knights' do
  @knights = Knight.all()
  @kingdoms = Kingdom.all
  erb(:'knights/index')
end

#new
get '/knights/new' do
  @kingdoms = Kingdom.all
  @horses = Horse.all
  erb(:'knights/new')
end

# create
post '/knights' do
  @knight = Knight.new(params)
  @knight.save()
  erb(:'knights/create')
end

# show
get '/knights/:id' do
  @knight = Knight.find(params[:id])
  # @kingdoms = Kingdom.all
  erb(:'knights/show')
end

post '/knights/:id/delete' do
  Knight.destroy(params[:id])
  redirect to("/knights")
end

get '/knights/:id/edit' do
  @knight = Knight.find(params[:id])
  @kingdoms= Kingdom.all()
  erb(:'knights/edit')
end

post '/knights/:id' do
  @knight = Knight.update(params)
  redirect to("/knights/#{params[:id]}")
end



