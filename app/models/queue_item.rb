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

    def movie(queue)
        Movie.all.find do |movie|
            movie.title = queue
        end
    end

    def rating(queue)
        QueueItem.all.each do |item|
            # item return entire object
            item = queue
        end
    end

end # End of Class
