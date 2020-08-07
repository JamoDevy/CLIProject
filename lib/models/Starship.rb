
class Starship

attr_reader :name, :manufacturer, :cost_in_credits, :passengers

@@all =[]

    def initialize(starship_data)
        @name = starship_data["name"]
        @manufacturer = starship_data["manufacturer"]
        @cost_in_credits = starship_data["cost_in_credits"]
        @passengers = starship_data["passengers"]

        @@all << self
    end

    def self.all 
        @@all
    end

    def pretty_print
        puts @name
        puts "Manufacturer: "
        puts @manufacturer
        puts "Cost in credits: "
        puts @cost_in_credits
        puts "Passengers: "
        puts @passengers
    end

end
