require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/ranking')
require_relative('../models/horse')
require_relative('../models/kingdom')

get '/rankings' do
  erb(:'rankings/index')
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

get '/rankings/events' do
  @ran_events = Event.has_ran()
  erb(:'rankings/events')
end

