class DisneyRides::Ride 
  attr_accessor :name, :description
   @@all = []
  
  def initialize(name, description = nil)
    @name = name 
    @description = description
    @@all << self
    #binding.pry
  end 
  
  def self.all
    @@all 
  end 
  
end 