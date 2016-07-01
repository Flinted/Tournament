require_relative('../db/sql_runner')

class List
  attr_reader(:knights)

  def initialize(knights)
    @knights = knights
  end

  def knight_count
    return @knights.size
  end

  def remove(knight)
      @knights.delete(knight)
  end
end