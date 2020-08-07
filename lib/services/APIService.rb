require "pry"

class APIService

    BASE_URI = "https://swapi.py4e.com/api/"

    def fetch_people_by_name(name)
        uri = URI(BASE_URI + "people/?search=#{name}")
        people = make_request(uri)
       
        if people
            People.new(people)
        else
            "Couldn't find a person with that name.".colorize(:red)
        end
    
        
    end


    def fetch_planet_by_name(name)
        uri = URI(BASE_URI + "planets/?search=#{name}")
        planet = make_request(uri)
        if planet
            Planet.new(planet)
        else
            "Couldn't find a planet with that name.".colorize(:red)
        end
    end

    def fetch_starship_by_name(name)
        uri = URI(BASE_URI + "starship/?search=#{name}")
        starship = make_request(uri)
        if starship
            Starship.new(starship)
        else
            "Couldn't find a starship by that name.".colorize(:red)
        end
    end

    def fetch_vehicle_by_name(name)
        uri = URI(BASE_URI + "vehicle/?search=#{name}")
        vehicle = make_request(uri)
        if vehicle
            Vehicle.new(vehicle)

        else
            "Couldn't find a vehicle with that name.".colorize(:red)
        end 
    end

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)

    end


    
end