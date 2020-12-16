class Animal

    attr_reader :species, :nickname, :zoo 
    attr_accessor :weight 

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo 
        @@all << self
    end

    def self.all
        @@all 
    end

    # return the zoo instance that the instance belongs to
    # this is possible b/c the zoo instance is in the Aninmal.new()
    def zoo
        @zoo  
    end

    # take in an animal's species as an argument
    # return an array of all the animals, which are of that species
    def self.find_by_species(species)
        self.all.select do |animal_instance|
            animal_instance.species == species
        end 
    end

end
