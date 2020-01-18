class DisneyRides::Scraper
  
  #attr_accessor :name, :description 
  
    def self.scrape_tripsavvy
      doc = Nokogiri::HTML(open("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"))
      goodrides = doc.search("h2").collect {|name| name.css("a").text}
     # binding.pry
      goodrides.each do |grides|
      DisneyRides::Ride.new (grides)
      end 
    end
    
    def self.scrap_desc
      doc = Nokogiri::HTML(open("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"))
       ride_desc = doc.css(".comp.list-sc-item.mntl-block").collect {|paragraph| paragraph.css("p").text}
      counter = 0 
      ride_desc.each do |d| 
        DisneyRides::Ride.all[counter].description = d
        counter += 1 
       end 
      end 
      
    end 
