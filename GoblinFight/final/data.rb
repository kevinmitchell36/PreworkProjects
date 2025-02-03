require 'sqlite3'


class DataCalls

  def initialize(db)
    @db = db
  end

  def create_table
    @db.execute <<-SQL
    create table monsters (
      name varchar(50),
      weapon1 varchar(50),
      armor_rating int
      );
      SQL
  end 
  
  def insert_to_table(stats)
    if stats.kind_of?(Array)
      @db.execute("INSERT INTO monsters (name, weapon1, armor_rating) VALUES (?,?,?)", stats )
    else 
      puts "Data type must be array"
    end
  end  

  def read_table
    @db.execute("select * from monsters") do |row|
      p row
    end
  end

end

game_db = SQLite3::Database.new "game.db"
db = DataCalls.new(game_db)  
# db.create_table
# db.insert_to_table("Goblin")
# db.read_table

