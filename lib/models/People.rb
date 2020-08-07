require "pry"

class People

attr_reader :name, :height, :eye_color, :gender

@@all = []

    def initialize(people_data)
        @name = people_data["name"]
        @height = people_data["height"]
        @eye_color = people_data["eye_color"]
        @gender = people_data["gender"]

        @@all << self
  
    end

    def self.all
        @@all
    end
        

    def pretty_print
        puts @name
        puts "Height:"
        puts @height
        puts "Eye color:"
        puts @eye_color
        puts "Gender:"
        puts @gender

    end

end




