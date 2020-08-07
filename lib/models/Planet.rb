
class Planet

attr_reader :name, :terrain, :climate, :film

@@all = []

    def initialize(planet_data)
        @name = planet_data["name"]
        @terrain = planet_data["terrain"]
        @climate = planet_data["climate"]
        @film = planet_data["film"]

        @@all << self
    end

    def self.all
        @@all
    end


end