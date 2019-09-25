class QueueItem

    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer
        #assign a movie to a viewer
        QueueItem.all.find do |item|
            #movie item has to match viewer and return viewer
            item
        end
    end

    def movie
        Movie.all.find do |movie|
            movie.title
        end
    end

    def rating
        QueueItem.all.each do |queue|
            # queue return entire object
            queue
        end
    end

end # End of Class
