class QueueItem
    attr_reader :viewer
    attr_accessor :movie, :rating

    @@all = []

def initalize (viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
end

def self.all
    @@all
end


end # end of queue item
