require_relative('../db/sql_runner')

class Kingdom

  attr_reader(:id,:name,:flag,:arms)

  def initialize(options)
    @id= options['id'].to_i
    @name= options['name'].split.map{|i| i.capitalize}.join(' ')
    @flag= options['flag']
    @arms=options['arms']
  end

  # DATABASE FUNCTIONS
    def save()
      sql = "INSERT INTO kingdoms (name, flag, arms) VALUES ('#{@name}', '#{@flag}' ,'#{@arms}' ) RETURNING *"
      return Kingdom.map_item(sql)
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