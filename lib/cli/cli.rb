class DisneyRides::CLI 
  
  def call 
    list_rides 
    menu
    goodbye 
  end   
  
  def list_rides 
    puts "The Top 10 Rides at Disney World:"
    @rides = DisneyRides::Ride.today
    @rides.each.with_index(1) do |ride, i|
      puts "#{i}. #{ride.name}"  # #{ride.description} - #{ride.fun}
    end
  end 
  
  def menu 
  input = nil 
    while input != "exit"
        puts "Enter the number to know what ride is ranked or type list to see the ride names again or type exit to enter :"
    input = gets.strip.downcase
    
    if input.to_i > 0 
      the_ride = @rides[input.to_i-1]
      puts "#{the_ride.name}"
      #{the_ride.description} - #{ride.fun}"
    elsif input == "list"  
    list_rides
    else 
      puts "Not sure what you want, type list or exit" 
     end  
    end 
  end 
  
  def goodbye 
  puts "see you next time!" 
end 
end   