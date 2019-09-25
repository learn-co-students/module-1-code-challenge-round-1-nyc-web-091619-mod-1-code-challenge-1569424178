class QueueItem

    attr_accessor :viewer,:movie
    attr_reader :rating

    @@all = []

    def initialize(viewer,movie)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rate_a_movie(rating)
        rating = [1,2,3,4,5]
        if rating.length = 0
            "nil"
        end
    end
end # end of queue item


