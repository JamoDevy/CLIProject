class APIService

    BASE_URI = "https://swapi.dev/api/"

    def fetch_people_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        people = make_request(uri)
        if people[0]
            people.new(people[0])
        else
            "Couldn't find a person with that name.".colorize(:red)
        end
    end

    def fetch_planet_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        planet = make_request(uri)
        if planet[0]
            planet.new(planet[0])
        else
            "Couldn't find a planet with that name.".colorize(:red)
        end
    end

    def fetch_starship_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        starship = make_request(uri)
        if starship[0]
            starship.new(starship[0])
        else
            "Couldn't find a starship by that name.".colorize(:red)
        end
    end

    def fetch_vehicle_by_name(name)
        uri = URI(BASE_URI + "?name=#{name}")
        vehicle = make_request(uri)
        if vehicle[0]
            vehicle.new(vehicle[0])
        else
            "Couldn't find a vehicle with that name.".colorize(:red)
        end 
    end

    def make_request(uri)
        response = NET::HTTP.get_response(uri)
        JSON.parse(response.body)
    end