require_relative('db/sql_runner')
require_relative('models/list')
require_relative('models/knight')
require_relative('models/horse')
require_relative('models/nation')
require_relative('models/event')

runner = Runner.new()

nation1=Nation.new()
horse1= Horse.new()
knight1=Knight.new()

event=Event.new()