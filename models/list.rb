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

  def self.delete_all
    sql = "DELETE FROM lists"
    run(sql)
  end

  def trim(event)
    event.competitors.each do |knight|
      @knights.delete(knight)
    end
  end
end