class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    # Goal: returns an array of all the Q item instances that contain this movie
    # Iterate through an array of Q items
    # Find the movies that match this instance and return an array with just those items
    # .Map
  end

  def viewers
    # Goal: returns an array of all the viewers with this movie instance in their Q

    # iterate through the QueueItem.all and return an array of all the Viewer objects associated
    # with this movie

    QueueItem.all.map do |qitem|
      qitem.viewer
    end # couldnt figure out how to get the viewer value from each item in QueueItem.all
  end

  def average_rating
    # Goal: returns the average of all ratings for this instance of movie
  end

  def highest_rated
  # Goal: returns the instance of movie with the highest average rating
  # Iterate through the array of movie objects
  # Return the highest rated movie object
  end

end
