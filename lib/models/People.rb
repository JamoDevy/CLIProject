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

    def return_names
        @@all.each do |name| name
        end
    end
    

    def self.all
        @@all
    end

        

    def pretty_print
        puts @name
        print "Height:---"
        puts @height
        print "Eye color:---"
        puts @eye_color
        print "Gender:---"
        puts @gender

    end

end



