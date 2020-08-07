
class Vehicle

attr_reader :name, :manufacturer, :cost, :passengers

@@all = []

    def initialize(vehicle_data)
        @name = vehicle_data["name"]
        @manufacturer =vehicle_data["manufacturer"]
        @cost = vehicle_data["cost"]
        @passengers = vehicle_data["passengers"]

        @@all << self

    end

    def self.all
        @@all
    end

end
