require ('pg')

def run( sql )
  begin
    db = PG.connect({ dbname: 'tournament', host: 'localhost' })
    result = db.exec( sql )
  ensure
    db.close
  end
  return result
end
