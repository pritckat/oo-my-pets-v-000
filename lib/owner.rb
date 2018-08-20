class Owner
  attr_accessor :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
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

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
end
