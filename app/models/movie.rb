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

  # + `Movie#queue_items`
#   + returns an array of all the `QueueItem` instances that contain this movie
  def queue_items
    x = QueueItem.all.select do |queueitem|
      queueitem.movie == self
    end
    x.map do |queueitem|
      queueitem.movie
    end
  end

  # + `Movie#viewers`
#   + returns an array of all of the `Viewer`s with this `Movie` instance in their queue

  def viewers
    viewer_que = QueueItem.all.select do |queueitem|
      queueitem.movie == self
    end
    viewer_que.map do |queueitem|
      queueitem.viewer
    end
  end

  # + `Movie#average_rating`
#   + returns the average of all ratings for this instance of `Movie`
  def average_rating
    total_movie = Viewer.all.count

    sum_rating = (QueueItem.all.map {|queueitem|
    queueitem.rating}).sum

    total_movie/sum_rating

    # movie = QueueItem.all.select do |queueitem|
    #   queueitem.movie = self
    # end
    # movie_rating = movie.map do |queueitem|
    #   queueitem.rating
    # end

    # avg = movie / movie_rating

    #Need to look at all QU becuase it has the ratings since it is given by the user and movie watched
    #


  end

  
  # + `Movie.highest_rated`
  #   + returns the instance of `Movie` with the highest average rating
    def self.highest_rated
      movie = QueueItem.all.select do |queueitem|
        queueitem.movie = self
      end
      movie.map do |queueitem|
        queueitem.rating
#us

end #End of Movie Class