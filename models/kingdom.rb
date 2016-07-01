require_relative('../db/sql_runner')

class Kingdom

  def initialize(options)
    @id= options('id').to_i
    @name= options('name')
    @flag= options('flag')
    @arms=options('arms')
  end

end