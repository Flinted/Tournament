require_relative('../db/sql_runner')
require_relative('trophy')
require_relative('event')

class Knight

  attr_reader(:id,:name,:nation_id,:horse,:img,:wealth,:trophies)

  def initialize(options)
    @id=options['id'].to_i
    @name= options['name'].split.map{|i| i.capitalize}.join(' ')
    @nation_id= options['nation_id'].to_i
    @horse= options['horse']
    @img = options['img']
    @wealth= options['wealth'].to_i
    @trophies=[]
  end

  def add_wealth(wealth)
   return @wealth += wealth
  end

 def trophy_count()
  return @trophies.size
 end

def add_trophy(trophy)
  @wealth += trophy.prize
  @trophies << trophy
end

def add_horse(horse)
  @horse = horse
end

def remove_horse()
  @horse = nil
end

def get_points()
  gold = 0
  silver = 0
  bronze = 0
  @trophies.each do |trophy|
    gold += 1 if trophy.type == 'gold'
    silver += 1 if trophy.type == 'silver'
    bronze += 1 if trophy.type == 'bronze'
  end
  points = (gold * 5) + (silver*3) + bronze
  return points
end

# DATABASE FUNCTIONS
def save()
  sql = "INSERT INTO knights (name, nation_id, img, wealth) VALUES ('#{@name}', #{@nation_id} ,'#{@img}' ,#{@wealth} ) RETURNING *"
  knight = Knight.map_item(sql)
  get_trophies()
  return knight
end

def self.destroy(id)
  sql = "DELETE FROM knights WHERE id = #{id}"
  run(sql)
end

def self.all()
  sql = "SELECT * FROM knights"
  return Knight.map_items(sql)
end

def self.delete_all()
  sql = "DELETE FROM knights"
  run(sql)
end

def self.find(id)
  sql = "SELECT * FROM knights WHERE id = #{id}"
  return Knight.map_item(sql)
end

def self.map_items(sql)
  knights = run(sql)
  result = knights.map { |knight| Knight.new( knight) }
  return result
end

def self.map_item(sql)
  result = Knight.map_items(sql)
  return result.first
end

def get_trophies()
  sql = "SELECT * FROM results WHERE knight_id = #{id}"
  results = run(sql)
  trophies = results.map {|result| Trophy.new(Event.find(result['event_id'].to_i),result['position'].to_i)}
  trophies.each do |trophy|
  add_trophy(trophy)
  end
end
end