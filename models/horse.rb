require_relative('../db/sql_runner')

class Horse

  attr_reader(:id,:name,:img,:knight_id)

  def initialize(options)
    @id=options['id'].to_i
    @name=options['name']
    @img=options['img']
    @knight_id=options['knight_id'].to_i
  end

end