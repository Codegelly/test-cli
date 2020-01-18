class DisneyRides::Scraper
  
  attr_accessor :name, :description 
  
    def self.scrape_tripsavvy
      doc = Nokogiri::HTML(open("https://www.tripsavvy.com/best-walt-disney-world-rides-3225804"))
      goodrides = doc.search("h2").collect {|name| name.css("a").text}
      goodrides.each do |grides| Ride.new (grides)
    end 
    end 
  end   