class DisneyRides::CLI 
  
  def call 
    list_rides 
    menu
    goodbye 
  end   
  
  def list_rides 
    puts "The Top 10 Rides at Disney World:"
    @rides = DisneyRides::Ride.scrape_tripsavvy
    @rides.name.each.with_index(1) do |ride, i|
      puts "#{i}. #{ride}"
  end
    menu
  end 
  
  def menu 
    input = nil 
      while input != "exit"
        puts "Enter the number to know what ride is ranked or type list to see the ride names again or type exit to exit :"
    input = gets.strip.downcase
    
      if input.to_i > 0 && input.to_i < 11
      puts @rides.name[input.to_i-1]
      puts "-------------"
      puts @rides.description[input.to_i-1]
        elsif input == "list"  
          list_rides
        elsif input == "exit"
           goodbye 
       exit 
      else 
        puts "Not sure what you want, type number or exit" 
     end  
    end 
  end 
  
  def goodbye 
   puts "see you next time!" 
  end 
end   