require_relative('../db/sql_runner')

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

# DATABASE FUNCTIONS
  def save()
    sql = "INSERT INTO knights (name, nation_id, img, wealth) VALUES ('#{@name}', #{@nation_id} ,'#{@img}' ,#{@wealth} ) RETURNING *"
    return Knight.map_item(sql)
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

end