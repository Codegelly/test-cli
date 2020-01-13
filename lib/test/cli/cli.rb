class disney_rides::CLI 
  
  def call 
    list_rides 
    menu
    goodbye 
  end   
  
  def list_rides 
    
    puts "The Top 10 Rides at Disney World:"
    puts <<-DOC.gsub/^\s*/,''
    
      1 Pirates of the Caribbean
      2 The Twilight Zone Tower of Terror
      3 The Haunted Mansion
      4 Avatar Flight of Passage
      5 Star Tours - The Adventures Continue
      6 Soarin’ Around the World
      7 Millennium Falcon: Smuggler’s Run
      8 Mission: SPACE
      9 Expedition Everest
      10 Splash Mountain
    DOC 
  end 
  
  def menu 
  input = nil 
    while != "exit"
        puts "Enter the number to know what ride is ranked or type list to see the ride names again or type exit to enter :"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "Ride name" 
    when "2"
      puts "Ride name" 
    when "list"
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