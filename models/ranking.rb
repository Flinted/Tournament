require_relative('../db/sql_runner')
require_relative('trophy')
require_relative('event')
require('pry-byebug')

class Ranking

  def initialize()
    @knights = nil
    @events = nil
    @kingdoms = nil
    refresh()
  end

  # gets specific trophy type as array of arrays carrying knight id in [0]
  def get_type_trophies(type)
    trophies = []
    @knights.each do |knight|
      knight.trophies.each do |trophy|
        packet = [knight.id, trophy] 
        trophies << packet if trophy.type == type
      end
    end
    return trophies
  end

# returns all trophies in a hash of arrays by type
  def get_all_trophies
    gold = get_type_trophies("gold")
    silver = get_type_trophies("silver")
    bronze = get_type_trophies("bronze")
    tin = get_type_trophies("tin")
    trophies = {'gold' => gold, 'silver' => silver, 'bronze' => bronze, 'tin' => tin }
    return trophies
  end

# makes sure arrays are correct with database
  def refresh()
    @knights = Knight.all
    @events = Event.all
    @kingdoms = Kingdom.all
    run_results()
  end
  
  # gets correct knight from array without new instance to protect trophies
  def filter(id)
  @knights.each do |competitor|
    @win_knight = competitor if competitor.id == id
  end
  return @win_knight
  end

  # runs through results and distributes trophies
  def run_results()
    sql = "SELECT * FROM results"
    results = run(sql)
    results.each do |result|
      event = Event.find(result['event_id'].to_i)
      knight = filter(result['knight_id'].to_i)
      trophy = Trophy.new(event,result['position'].to_i)
      knight.add_trophy(trophy)
    end
  end

  def rank_knights()
    @knights.sort {|a,b| b.get_points <=> a.get_points}
  end

end