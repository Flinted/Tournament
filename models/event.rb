require_relative('../db/sql_runner')

class Event

  attr_reader(:name,:id,:type,:family,:img,:max,:prize,:competitors,:event_date)

  def initialize(options)
    @id= options['id'].to_i
    @name=options['name']
    @type=options['type']
    @family=options['family']
    @max=options['max'].to_i
    @img=options['img']
    @prize=options['prize'].to_i
    @event_date= options['event_date']
    @competitors=[]
  end

  def competitor_count()
    return @competitors.size
  end

  def add_knight(knight)
    if competitor_count < @max
      @competitors << knight 
    else
      return "Event Full"
    end
  end


  # DATABASE FUNCTIONS
  def run_event()
    if competitor_count!=0
      @competitors.shuffle!
      position = 1
      @competitors.each do |competitor|
        sql = "INSERT INTO results (event_id, knight_id, position) VALUES (#{@id}, #{competitor.id},#{position})"
        run(sql)
        trophy=Trophy.new(self,position)
        position += 1
        competitor.add_trophy(trophy)
      end
    else
      return "no competitors!"
    end
  end

  def save()
    sql = "INSERT INTO events (name, type, family, max, img, prize, event_date) VALUES ('#{@name}', '#{@type}' ,'#{@family}' ,#{@max},'#{@img}',#{@prize},'#{@event_date}' ) RETURNING *"
    return Event.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM events"
    return Event.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM events"
    run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM events WHERE id = #{id}"
    return Event.map_item(sql)
  end

  def self.map_items(sql)
    events = run(sql)
    result = events.map { |event| Event.new( event) }
    return result
  end

  def self.map_item(sql)
    result = Event.map_items(sql)
    return result.first
  end

end