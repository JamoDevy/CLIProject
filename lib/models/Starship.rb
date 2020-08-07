
class Starship

attr_reader :name, :manufacturer, :cost, :passengers

@@all =[]

    def initialize(starship_data)
        @name = starship_data["name"]
        @manufacturer = starship_data["manufacturer"]
        @cost = starship_data["cost"]
        @passengers = starship_data["passengers"]

        @@all << self
    end

    def self.all 
        @@all
    end
end
