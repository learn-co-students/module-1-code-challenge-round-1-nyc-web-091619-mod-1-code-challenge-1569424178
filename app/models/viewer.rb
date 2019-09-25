class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end


  # + `Viewer#queue_items`
#   + this method should return an array of `QueueItem` instances associated with this instance of `Viewer`.
  def queue_items
    que = QueueItem.all.select do |queueitem|
      queueitem.viewer == self
    end
    # que.map do |queueitem|
    #   queueitem.viewer
    # end

  end


# + `Viewer#queue_movies`
#   + this method should return an array of `Movie` instances in the `Viewer`'s queue.
  def queue_movies
    viewer_que = QueueItem.all.select do |queueitem|
      queueitem.viewer == self
    end
    # viewer_que.map do |queueitem|
    #   queueitem.movie
    # end
  end



# + `Viewer#add_movie_to_queue(movie)`
#   + this method should receive a `Movie` instance as its only argument and add it to the `Viewer`'s queue

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)
  end


# + `Viewer#rate_movie(movie, rating)`
#   + given a movie and a rating (a number between 1 and 5), this method should assign the rating to the viewer's `QueueItem` for that movie. If the movie is not already in the viewer's queue, this method should add a new `QueueItem` with the viewer, movie, and rating. If the movie is already in the queue, this method should not create a new `QueueItem`.

def rate_movie(movie, rating)
  x = QueueItem.all.select do |queueitem|
    queueitem. viewer= self
  x.map

  
  else
  #create new
  QueueItem.new(self, movie, rating)
  end

end
#

end #End of Viewer class