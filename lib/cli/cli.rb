class DisneyRides::CLI 
  
  def call 
    list_rides 
    #binding.pry
    menu
    goodbye 
  end   
  
  def list_rides 
    puts "The Top 10 Rides at Disney World:"
    @rides = DisneyRides::Ride.scrape_tripsavvy
    #binding.pry
    @rides.name.each.with_index(1) do |ride, i|
     # binding.pry
      puts "#{i}. #{ride}"
      # #{ride.description} 
    end
  end 
  
  def menu 
  input = nil 
    while input != "exit"
        puts "Enter the number to know what ride is ranked or type list to see the ride names again or type exit to exit :"
    input = gets.strip.downcase
    
    if input.to_i > 0 && input.to_i < 11
      #the_ride = 
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