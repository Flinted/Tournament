require_relative('../db/sql_runner')

class Knight

  attr_reader(:id,:name,:nation_id,:horse,:img,:wealth,:trophies)

  def initialize(options)
    @id=options('id').to_i
    @name= options('name')
    @nation_id= options('nation_id').to_i
    @horse= options('horse')
    @img = options('img')
    @wealth= options('wealth').to_i
    @trophies=[]
  end

end