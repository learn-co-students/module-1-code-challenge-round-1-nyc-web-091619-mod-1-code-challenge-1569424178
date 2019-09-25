class QueueItem

    #   A QueueItem (QI) object represents that an individual user has
    #   added a particular movie to their queue, and possibly rated it. 
    #   It is not the full queue, but a single item in the queue.

    attr_reader     :viewer, :movie
    attr_accessor   :rating

    @@all = []

    def initialize(viewer, movie, rating=nil)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all            #   returns array of all QIs
        @@all
    end

    def viewer              #   returns viewer associated w/ this QIs
        @viewer
    end

    def movie               #   returns movie associated w/ this QIs
        @movie
    end

    def rating              #   returns the ratings for this QI
        @rating             #   If viewer has not yet rated, 
    end                     #   QI#rating should be nil


end     #   end of QueueItem class

