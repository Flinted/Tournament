require_relative('../db/sql_runner')
require('pry-byebug')

class Kingdom

  attr_reader(:id,:name,:flag,:arms)

  def initialize(options)
    @id= options['id'].to_i
    @name= options['name'].split.map{|i| i.capitalize}.join(' ')
    @flag= options['flag']
    @arms=options['arms']
    @trophies= []
  end

  def get_trophies
        knights = get_knights()
        knights.each {|knight| knight.get_trophies}
        for knight in knights do
            for trophy in knight.trophies do
                @trophies << trophy
            end
        end       
  end

  def get_points
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

  def trophy_count()
      return @trophies.size
  end

  # DATABASE FUNCTIONS
    def get_knights()
      sql = "SELECT * FROM knights WHERE knights.nation_id = #{@id}"
      result = Knight.map_items(sql)
      return result
    end

    def save()
      sql = "INSERT INTO kingdoms (name, flag, arms) VALUES ('#{@name}', '#{@flag}' ,'#{@arms}' ) RETURNING *"
      return Kingdom.map_item(sql)
    end

    def self.update(options)
      sql = "UPDATE kingdoms SET
             name= '#{options['name']}',
             flag= '#{options['flag']}',
             arms = '#{options['arms']}'
             WHERE id = '#{options['id']}'"
         
      run(sql)
    end
    def self.destroy(id)
      sql = "DELETE FROM kingdoms WHERE id = #{id}"
      run(sql)
    end

    def self.all()
      sql = "SELECT * FROM kingdoms"
      return Kingdom.map_items(sql)
    end

    def self.delete_all()
      sql = "DELETE FROM kingdoms"
      run(sql)
    end

    def self.find(id)
      sql = "SELECT * FROM kingdoms WHERE id = #{id}"
      return Kingdom.map_item(sql)
    end

    def self.map_items(sql)
      kingdoms = run(sql)
      result = kingdoms.map { |kingdom| Kingdom.new( kingdom) }
      return result
    end

    def self.map_item(sql)
      result = Kingdom.map_items(sql)
      return result.first
    end

end