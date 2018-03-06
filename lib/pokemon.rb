class Pokemon

  attr_accessor :id, :name, :hp, :type, :db


  def initialize id:, name:, type:, hp: 60, db:
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id_num, db)
    binding.pry
    db.execute("SELECT pokemon.id, pokemon.name, pokemon.type FROM pokemon WHERE pokemon.id = ?", id_num)
  end

end
