require_relative('../db/sql_runner')

class List
  attr_reader(:knights)
  def initialize(knights)
    @knights = knights
  end

end