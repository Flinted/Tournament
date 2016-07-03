require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/ranking')
require_relative('../models/horse')
require_relative('../models/kingdom')

# index
get '/rankings' do
  @rankings = ranking.all()
  @kingdoms = Kingdom.all
  erb(:'rankings/index')
end

#new
get '/rankings/new' do
  @kingdoms = Kingdom.all
  @horses = Horse.all
  erb(:'rankings/new')
end

# create
post '/rankings' do
  @ranking = Ranking.new(params)
  @ranking.save()
  erb(:'rankings/create')
end

get '/rankings/stables' do
  @rankings = Ranking.all()
  @horses = Horse.all()
  erb(:'rankings/stables')
end

post '/rankings/stables' do
    @horse = Horse.find(params[:horse].to_i)
    @ranking=Ranking.find(params[:ranking].to_i)
    @horse.add_ranking_id(@ranking.id)
    @horse.save
    @ranking.add_horse(@horse)
    erb(:'rankings/show')
end

# show
get '/rankings/:id' do
  @ranking = Ranking.find(params[:id])
  # @kingdoms = Kingdom.all
  erb(:'rankings/show')
end


post '/rankings/:id/delete' do
  Ranking.destroy(params[:id])
  redirect to("/rankings")
end

get '/rankings/:id/edit' do
  @ranking = Ranking.find(params[:id])
  @kingdoms= Kingdom.all()
  erb(:'rankings/edit')
end

post '/rankings/:id' do
  @ranking = Ranking.update(params)
  redirect to("/rankings/#{params[:id]}")
end



