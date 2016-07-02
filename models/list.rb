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

  # DATABASE FUNCTIONS

  def save
    @knights.each do |knight|
      sql = "INSERT INTO lists (knight_id) VALUES (#{knight.id})"
      run(sql)
    end
  end
end