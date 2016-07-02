require_relative('../db/sql_runner')

class Trophy

  attr_reader(:type,:event,:event_id,:family,:event_img,:prize)
  def initialize(event, position, type)
    @type=type
    @position = position
    @event=event.name
    @event_id=event.id.to_i
    @family=event.family
    @event_img=event.img()
    @prize=event.prize().to_i
  end
  
end