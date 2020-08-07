class APIService

    BASE_URI = "https://swapi.py4e.com/api/"

    def fetch_people_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        people = make_request(uri)
        if people[0]
            People.new(people[0])
        else
            "Couldn't find a person with that name.".colorize(:red)
        end
    
    end


    def fetch_planet_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        planet = make_request(uri)
        if planet[0]
            Planet.new(planet[0])
        else
            "Couldn't find a planet with that name.".colorize(:red)
        end
    end

    def fetch_starship_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        starship = make_request(uri)
        if starship[0]
            Starship.new(starship[0])
        else
            "Couldn't find a starship by that name.".colorize(:red)
        end
    end

    def fetch_vehicle_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        vehicle = make_request(uri)
        if vehicle[0]
            Vehicle.new(vehicle[0])
        else
            "Couldn't find a vehicle with that name.".colorize(:red)
        end 
    end

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end


    
end