class DisneyRides::CLI 
  
  def call 
    DisneyRides::Scraper.scrape_tripsavvy
    DisneyRides::Scraper.scrap_desc
    list_rides 
     menu
     goodbye 
  end   
  
  def list_rides 
    puts "The Top 10 Rides at Disney World:"
    #@rides = DisneyRides::Ride.scrape_tripsavvy
   DisneyRides::Ride.all.each.with_index(1) do |ride, i|
      puts "#{i}. #{ride.name}"
  end
    menu
  end 
  
  def menu 
        puts "Enter the number to know what ride is ranked or type list to see the ride names again or type exit to exit :"
    input = gets.strip.downcase
    
      if input.to_i < 0 || input.to_i > DisneyRides::Ride.all.length
        puts "Not sure what you want, type number between 1-10 or exit"
      menu
      else 
       puts DisneyRides::Ride.all[input.to_i-1].description
       puts "-------------"
      # puts @rides.description[input.to_i-1]
      end 
  end 
  
  def goodbye 
   puts "see you next time!" 
  end 
end   