
class Vehicle

attr_reader :name, :manufacturer, :cost_in_credits, :passengers

@@all = []

    def initialize(vehicle_data)
        @name = vehicle_data["name"]
        @manufacturer =vehicle_data["manufacturer"]
        @cost_in_credits = vehicle_data["cost_in_credits"]
        @passengers = vehicle_data["passengers"]

        @@all << self

    end

    def self.all
        @@all
    end

    def pretty_print
        puts @name
        print "Manufacturer:--- "
        puts @manufacturer
        print "Cost in credits:--- "
        puts @cost_in_credits
        print "Passengers:--- "
        puts @passengers
    end

end
