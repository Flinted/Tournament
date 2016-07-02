require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/knight')
require_relative('../models/horse')

# index
get '/horses' do
  @horses = Horse.all()
  erb(:'horses/index')
end

#new
get '/horses/new' do
  @horses = Horse.all
  @knights = Knight.all
  erb(:'horses/new')
end

# create
post '/horses' do
  @horse = Horse.new(params)
  @horse.save()
  erb(:'horses/create')
end

# show
get '/horses/:id' do
  @horse = Horse.find(params[:id])
  erb(:'horses/show')
end

post '/horses/:id/delete' do
  Horse.destroy(params[:id])
  redirect to("/horses")
end

get '/horses/:id/edit' do
  @horse = Horse.find(params[:id])
  erb(:'horses/edit')
end

post '/horses/:id' do
  @horse = Horse.update(params)
  redirect to("/horses/#{params[:id]}")
end



