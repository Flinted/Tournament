require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/knight')
require_relative('../models/horse')
require_relative('../models/kingdom')
require_relative('../models/ranking')


# index
get '/knights' do
  @horses= Horse.all()
  @knights = Knight.all()
  # @kingdoms = Kingdom.all()
  erb(:'knights/index')
end

#new
get '/knights/new' do
  @kingdoms = Kingdom.all
  @horses = Horse.all
  erb(:'knights/new')
end

get '/knights/search' do
  @knights = Knight.search(params['search'])
  erb(:'knights/result')
end

# create
post '/knights' do
  @knight = Knight.new(params)
  @knight.save()
  erb(:'knights/create')
end

get '/knights/stables' do
  @knights = Knight.all()
  @horses = Horse.all()
  erb(:'knights/stables')
end

post '/knights/stables' do
    @horse = Horse.find(params[:horse].to_i)
    @knight=Knight.find(params[:knight].to_i)
    @horse.add_knight_id(@knight.id)
    @knight.add_horse(@horse)
    erb(:'knights/show')
end

# show
get '/knights/:id' do
  @knight = Knight.find(params[:id])
  @knight.get_trophies()
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



