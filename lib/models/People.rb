require "pry"

class People

attr_reader :name, :species, :homeworld, :film

@@all = []

    def initialize(people_data)
        @name = people_data["name"]
        @species = people_data["species"]
        @homeworld = people_data["homeworld"]
        @film = people_data["film"]

        @@all << self
    end


    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find{|people| people.name.downcase == name.downcase}
    end

end




