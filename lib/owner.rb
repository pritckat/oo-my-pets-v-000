class Owner
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

end
