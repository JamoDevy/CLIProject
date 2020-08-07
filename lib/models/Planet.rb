
class Planet

attr_reader :name, :terrain, :climate, :population

@@all = []

    def initialize(planet_data)
        @name = planet_data["name"]
        @terrain = planet_data["terrain"]
        @climate = planet_data["climate"]
        @population = planet_data["population"]

        @@all << self
    end

    def self.all
        @@all
    end

    def pretty_print
        puts @name
        puts "Terrain: "
        puts @terrain
        puts "Climate: "
        puts @climate
        puts "Population: "
        puts @population
    end


end