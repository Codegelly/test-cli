class DisneyRides::Ride
  
  attr_accessor :name, :description 
  
    def self.scrape_tripsavvy
      doc = Nokogiri::HTML(open("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"))
      ride = self.new
      ride.name = doc.search("h2").collect {|name| name.css("a").text}
      ride.description = doc.css(".comp.list-sc-item.mntl-block").collect {|paragraph| paragraph.css("p").text}
      ride
    end 
  end   