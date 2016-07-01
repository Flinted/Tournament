require_relative('../db/sql_runner')

class Event

  attr_reader(:name,:id,:type,:family,:img,:max,:prize,:competitors)

  def initialize(options)
    @id= options['id'].to_i
    @name=options['name']
    @type=options['type']
    @family=options['family']
    @max=options['max'].to_i
    @img=options['img']
    @prize=options['prize'].to_i
    @competitors=[]
  end

end