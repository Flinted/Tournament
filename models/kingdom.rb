require_relative('../db/sql_runner')

class Kingdom

  attr_reader(:id,:name,:flag,:arms)

  def initialize(options)
    @id= options['id'].to_i
    @name= options['name'].split.map{|i| i.capitalize}.join(' ')
    @flag= options['flag']
    @arms=options['arms']
  end

end