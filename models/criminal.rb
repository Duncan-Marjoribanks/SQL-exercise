require("PG")

class Criminal

attr_accessor :name, :species, :bounty_value, :danger_level

def initialize(options)
  @id = options["id"].to_i if options ["id"]
  @name = options["name"]
  @species = options["species"]
  @bounty_value = options["bounty_value"]
  @danger_level = options["danger_level"]
end



# instance methods

def save()
  db = PG.connect({
    dbname: "bounties",
    host: "localhost"
    })
    sql = "INSERT INTO criminals
    (name,
     species,
     bounty_value,
     danger_level)
    VALUES
    ($1, $2, $3, $4) RETURNING id"
    values = [@name, @species, @bounty_value, @danger_level]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    db.close()
  end

def update()
  db = PG.connect({
    dbname: "bounties",
    host: "localhost"
    })
    sql = "UPDATE criminals
    SET(name, species, bounty_value, danger_level) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@name, @species, @bounty_value, @danger_level]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close()
  end

def delete()
  db = PG.connect({
    dbname: "bounties",
    host: "localhost"
    })
    sql = "DELETE FROM criminals WHERE id = $1"
    db.prepare("delete_one", sql)
    db.exec_prepared("delete_one", [@id])
    db.close()
  end







#----------------------------------------------------

# class methods

def Criminal.find_by_name(person_name)
  db = PG.connect({
    dbname: "bounties",
    host: "localhost"
    })
    sql = "SELECT name FROM criminals WHERE name = ('#{person_name}')"
    db.prepare("person_name", sql)
    db.exec_prepared("person_name")
    db.close()
end



end
