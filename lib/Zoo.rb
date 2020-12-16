class Zoo

    attr_reader :name, :location

    @@all =[]

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end 

    # return all the animals that are a specific instance of the zoo
    def animals
        Animal.all.select do |animal_instance|
            animal_instance.zoo == self 
        end
    end 

    # returns a uniq (no duplicates) array of species that belong to the zoo
    def animal_species 
        animals.map do |animal_instance|
            animal_instance.species
        end.uniq 
    end 

    # return an array of all the animals in that zoo, which are of that species
    def find_by_species(species)
        animals.select do |animal_instance|
            animal_instance.species == species
        end 
    end

    # return an array of all the nicknames of animals from the zoo 
    def animal_nicknames
        animals.map do |animal_instance|
            animal_instance.nickname
        end 
    end

    # return an array of all the zoos within that location
    def self.find_by_location(location)
        self.all.select do |zoo_instance|
            zoo_instance.location == location
        end 
    end 

end
