class Owner

attr_reader :species
attr_accessor :name, :pets

@@all = []

def initialize(species)
  @species = species
  @name = name
  @pets = {:fishes => [], :dogs => [], :cats => [] }
  @@all << self
end

def self.all
  @@all
end

 def self.count
   @@all.length
 end

 def self.reset_all
   @@all = []
 end

 def say_species
   "I am a #{@species}."
 end

def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fishes|
    fishes.mood = "happy"
  end
end

def sell_pets
  @pets.each do |species,pets|
    pets.each do |pets_attributes|
      pets_attributes.mood = "nervous"
    end
  end
  @pets = []
end

def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end
end
