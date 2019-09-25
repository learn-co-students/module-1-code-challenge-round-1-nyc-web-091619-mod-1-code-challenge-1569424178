class QueueItem

    attr_accessor :movie, :viewer, :rating

    @@all = []

    def initialize(movie, viewer, rating = nil)
        @movie = movie
        @viewer = viewer
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        Viewer.all.select do |viewer| 
            viewer.username == self
        end
    end #getting an empty array

end #end of QueueItem class
