require_relative('../db/sql_runner')

class Trophy

  attr_reader(:type,:event,:event_id,:family,:event_img,:prize)
  def initialize(options)
    @type=options['type']
    @event=options['event']
    @event_id=options['event_id'].to_i
    @family=options['family']
    @event_img=options['img']
    @prize=options['prize'].to_i
  end

end