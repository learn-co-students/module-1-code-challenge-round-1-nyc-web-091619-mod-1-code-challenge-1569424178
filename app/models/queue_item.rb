class QueueItem

    attr_accessor :rating, :movie, :viewer

    @@all = []
    
    def initialize (movie, viewer, rating=nil)
        @movie = movie
        @viewer = viewer 
        @rating = rating
        @@all << self 
    end 

    def self.all 
        @@all 
    end  

end
