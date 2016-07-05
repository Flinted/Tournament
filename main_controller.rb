require('sinatra')
require('sinatra/contrib/all')
require_relative('./controllers/knight_controller')
require_relative('./controllers/event_controller')
require_relative('./controllers/horse_controller')
require_relative('./controllers/kingdom_controller')
require_relative('./controllers/stage_controller')
require_relative('./controllers/ranking_controller')

get "/" do
  erb(:"home")
end

get "/home" do
  redirect to ""
end