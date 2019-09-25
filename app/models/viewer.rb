class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all                # returns all of the viewers
    @@all
  end
  
  def queue_items             # return an array of this Viewer's QueueItem instances 
    QueueItem.all.select { 
      |queue_item|
      queue_item.viewer == self
    }
  end

  def queue_movies            # return an array of Movie instances in the Viewer's queue
    queue_items.select {
      |queue_item|
      queue_item.movie
    }
  end
  
  def add_movie_to_queue(movie)   # receive Movie instance, and add it to Viewer's queue
    QueueItem.new(self, movie)
  end

  def rate_movie(movie, rating)   # given a Movie instance, and a rating (1..5), assign a rating to viewer's QueueItem for that movie.  If QI doesnt exist for the movie, create one, do not create a new one if QI exists
    if (rating < 1 || rating > 5)
      puts "Please rate your selection #{movie.title} with a rating between 1 and 5."
      return 
    end
    
    target_QI = queue_items.find { 
      |queue_item|
      queue_item.movie == movie 
    }

    if target_QI
      target_QI.movie.rating = rating
    else
      QueueItem.new(self, movie, rating)
    end
  end

end   #   end of Viewer class
