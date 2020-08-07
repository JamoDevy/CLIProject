
require "pry"

class CLI

  def run
    @user_input = nil
    @api = APIService.new
    welcome
    until @user_input == "5"
      main_menu
    end
    puts "---May the force be with you.---".colorize(:blue)
  end


  def welcome
  puts "---Welcome to a galaxy far far away!---".colorize(:blue)
  
  end
  "\n"



  def main_menu
    puts "What would you like to search for?".colorize(:green)
    puts "1. Search for People"
    puts "2. Search for Planets"
    puts "3. Search for Vehicles"
    puts "4. Search for Starships"
    puts "5. Exit"

    @user_input = gets.chomp

    if @user_input == "1"
      search_for_people
    elsif @user_input == "2"
      search_for_planet
    elsif @user_input == "3"
      search_for_vehicle
    elsif @user_input == "4"
      search_for_starship
    elsif @user_input == "5"
      #exit
    else 
      puts "Invalid input".colorize(:red)
    end
   
  end

  def search_for_people
    print "Who would you like to look up? ".colorize(:green)
    input = gets.chomp
    people = @api.fetch_people_by_name(input)
    puts people.pretty_print
    
  end
 
  def search_for_planet
    print "What planet would you like to look up? ".colorize(:green)
    input = gets.chomp
    planet = @api.fetch_planet_by_name(input)
    puts planet.pretty_print

  end

  def search_for_vehicle
    print "What vehicle would you like to look up? ".colorize(:green)
    input = gets.chomp
    vehicle = @api.fetch_vehicle_by_name(input)
    puts vehicle.pretty_print
  end

  def search_for_starship
    print "What starship would you like to look up? ".colorize(:green)
    input =gets.chomp
    starship = @api.fetch_starship_by_name(input)
    puts starship.pretty_print
  end
   
end
