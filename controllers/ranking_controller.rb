require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/ranking')
require_relative('../models/horse')
require_relative('../models/kingdom')

get '/rankings' do
  redirect to ('/rankings/kingdoms')
end


# knights
get '/rankings/knights' do
  @ranking = Ranking.new
  @ranking.refresh()
  @knight_rank = @ranking.rank_knights()
  erb(:'rankings/knights')
end
    
get '/rankings/kingdoms' do
  @ranking = Ranking.new
  @ranking.refresh
  @kingdom_rank = @ranking.rank_kingdoms()
  erb(:'rankings/kingdoms')
end

get '/rankings/sidebar' do
  @ranking = Ranking.new
  binding.pry
  @ranking.refresh
  @kingdoms_rank = @ranking.rank_kingdoms()
  # kingdoms_ranks =   @kingdoms_rank
  erb :'rankings/sidebar', :locals => {:kingdoms_ranks => @kingdoms_rank}
end
