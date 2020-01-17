class DisneyRides::Ride
  
  attr_accessor :name, :description 

   #def self.today
   # i should return a bunch of instances of rides 
  # puts <<-DOC 
  # 1 pirates
  # 2 soar 
  # 3 space 
  # DOC
   
   
  # puts <<-DOC.gsub /^\s*/,
  #     1 Pirates of the Caribbean - A landmark achievement in theme park storytelling, it is a pitch-perfect attraction with perhaps the coolest theme park ride song ever. By the way, Pirates may be the best ride at Disney World, but there is another Disney ride that surpasses it and just may be the best theme park attraction in the world: Pirates of the Caribbean. Say what? It's the next-generation Pirates attraction at Shanghai Disneyland, Battle for the Sunken Treasure. - Have Fun ! 
  #     2 The Twilight Zone Tower of Terror - It is a modern-day classic Disney theme park attraction that combines a thrilling freefall ride, dazzling effects, and an inspired storyline. The "fourth dimension" sequence, in which the ride vehicles move horizontally through the ride building is stunning. - Have Fun! 
  #     3 The Haunted Mansion -One of the all-time classic, great Disney attractions. (But you know that, right?) What you might not know are some weird Haunted Mansion facts, secrets, and history​. - Have Fun!
  #     4 Avatar Flight of Passage -Disney takes the flying theater ride system it developed for Soarin to the next level with this breathtaking attraction. Tethered to an avatar, youll experience the thrill of riding a banshee high above the moon of Pandora. When it debuted in 2017, it immediately vaulted into top-10 status at Disney World. - Have Fun!
  #     5 Star Tours - The Adventures Continue -Blast off to a Star Wars galaxy far, far away in this spiffy, updated version of one of the first motion simulator rides. The technology behind the ride, which, among other things, allows multiple possible story lines, is truly astonishing. An expanded Star Wars land, which will bring two new attractions and a reportedly astonishing level of detail and immersion scheduled to open in the Studios park in 2019.  - Have Fun!
  #     6 Soarin’ Around the World -An engaging Disney E-ticket ride that uses pioneering "flying theater" technology, Soarin is a charming adventure In 2016, the Imagineers traded in a tour of California for international destinations including China, South America, and Australia. - Have Fun!
  #     7 Millennium Falcon: Smuggler’s Run - Imagine boarding a life-size version of the most famous bucket of bolts in moviedom. Imagine no more. Disney, in partnership with Lucasfilm, has built a startlingly lifelike Millennium Falcon—and you get to join its crew! It is the world’s first interactive, E-ticket, motion simulator ride. - Have Fun! 
  #     8 Mission: SPACE - The groundbreaking attraction simulates space travel by incorporating a unique ride system and immersing passengers in a highly detailed vehicle. Note that wimpy guests can opt for a non-spinning, mild version of the ride.- Have Fun!
  #     9 Expedition Everest - It is the combination of the coaster thrills and the attractions lavish, immersive environment that makes this a Disney E-ticket must-ride. Expedition Everest is one of the top roller coasters in Florida.- Have Fun!
  #     10 Splash Mountain -Disney marries the classic log flume ride (with one humdinger of a drop) to an animatronics-filled dark ride themed to the Uncle Remus characters from "Song of the South." You'll be humming "Zip-A-Dee-Doo-Dah" (once you regain your composure from the drop). - Have Fun!
  #   DOC
  
      #self.scrape_rides
      
     # self.scrape_tripsavvy
    #end
    
    
    #scrape woot and return rides based on the data 
    #Disney_Rides::RideScraper.new("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804")
    
    #def self.scrape_rides
     # rides = []
      
      #rides << self.scrape_tripsavvy
      
      #rides 
      
    #   ride_1 = self.new 
    #   ride_1.name = "Pirates of the Caribbean"
    #   ride_1.description "A landmark achievement in theme park storytelling, it is a pitch-perfect attraction with perhaps the coolest theme park ride song ever. By the way, Pirates may be the best ride at Disney World, but there is another Disney ride that surpasses it and just may be the best theme park attraction in the world: Pirates of the Caribbean. Say what? It's the next-generation Pirates attraction at Shanghai Disneyland, Battle for the Sunken Treasure." 
    #   ride_1.fun = true "Have Fun!" 
    #   ride_1.url = "https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"
      
    #   ride_2 = self.new 
    #   ride_2.name = "The Twilight Zone Tower of Terror"
    #   ride_2.description "It is a modern-day classic Disney theme park attraction that combines a thrilling freefall ride, dazzling effects, and an inspired storyline. The "fourth dimension" sequence, in which the ride vehicles move horizontally through the ride building is stunning." 
    #   ride_2.fun = true  "Have Fun!" 
    #   ride_2.url = "https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"
      
    # [ride_1, ride_2]
    
    
 # end 
  
  def self.scrape_tripsavvy
    doc = Nokogiri::HTML(open("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"))
    
    ride = self.new
    
    ride.name = doc.search("h2").collect {|name| name.css("a").text}
   # binding.pry
    
    ride.description = doc.css(".comp.list-sc-item.mntl-block").collect {|paragraph| paragraph.css("p").text}
    #binding.pry
    
     #ride.description = doc.css(".comp.text-passage.mntl-sc-block.travel-sc-block-html.mntl-sc-block-html").collect do |paragraph| paragraph.css("p").text
     
    ride
    # binding.pry
   end 
   # binding.pry
  
  #binding.pry
end   