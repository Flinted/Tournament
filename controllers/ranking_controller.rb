require( 'pry-byebug' )
require_relative('../db/sql_runner')
require_relative('../models/ranking')
require_relative('../models/horse')
require_relative('../models/kingdom')

# index
get '/rankings' do
  @ranking = Ranking.new
  @knight_rank = @ranking.rank_knights()
  erb(:'rankings/index')
end
    



