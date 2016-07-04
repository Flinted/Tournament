require_relative('../db/sql_runner')

class Trophy

  attr_reader(:type,:event,:position,:event_id,:family,:event_img,:prize)
  def initialize(event, position)
    @type= assign_trophy(position)
    @position = position
    @event=event.name
    @event_id=event.id.to_i
    @family=event.family
    @event_img=event.img()
    @prize=event.prize().to_i
  end
  
  def assign_trophy(position)
    type= 'tin'
    type= 'gold' if position == 1
    type= 'silver' if position == 2
    type= 'bronze' if position == 3 

    return type
  end
end