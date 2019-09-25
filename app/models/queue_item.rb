class QueueItem

    attr_accessor :viewer, :movie, :rating 

    @@all = []

    def initialize(viewer, movie, rating=nil)
        @viewer = viewer
        @movie = movie 
        @rating = nil

        @@all << self
    end

    def self.all
        @@all 
    end

    def rating
        if @rating == nil 
            self.rating = 'nil'
        else
            self.rating = @rating
        end
    end

end
