require_relative('../db/sql_runner')

class Horse

  attr_reader(:id,:name,:img,:knight_id)

  def initialize(options)
    @id=options['id'].to_i
    @name=options['name'].split.map{|i| i.capitalize}.join(' ')
    @img=options['img']
    @knight_id=options['knight_id'].to_i
  end


  # DATABASE FUNCTIONS
    def save()
      sql = "INSERT INTO horses (name,  img, knight_id) VALUES ('#{@name}','#{@img}' ,#{@knight_id} ) RETURNING *"
      return Horse.map_item(sql)
    end

    def self.all()
      sql = "SELECT * FROM horses"
      return Horse.map_items(sql)
    end

    def self.delete_all()
      sql = "DELETE FROM horses"
      run(sql)
    end

    def self.find(id)
      sql = "SELECT * FROM horses WHERE id = #{id}"
      return Horse.map_item(sql)
    end

    def self.destroy(id)
      sql = "DELETE FROM horses WHERE id = #{id}"
      run(sql)
    end

    def self.map_items(sql)
      horses = run(sql)
      result = horses.map { |horse| Horse.new( horse) }
      return result
    end

    def self.map_item(sql)
      result = Horse.map_items(sql)
      return result.first
    end
end