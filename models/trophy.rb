require_relative('../db/sql_runner')

class Trophy

  def initialize
    @type=options['type']
    @event=options['event']
    @event_id=options['event_id'].to_i
    @family=options['family']
    @event_img=options['img']
    @prize=options['prize'].to_i
  end

end