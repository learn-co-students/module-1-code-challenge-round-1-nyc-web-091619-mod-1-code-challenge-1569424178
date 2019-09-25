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
    QueueItem.all.select do |item|
      item.movie == self
    end
  end

  def viewers
    self.queue_items.map do |item| #call on helper method queue_items
      item.viewer
    end
  end

  def average_rating

    #1. find out how many ratings there are
    number_of_movies = self.queue_items.length #helper method queue_items

    #2. pull all ratings
    sum_of_ratings = self.queue_items.map do |item|
      item.rating
    end #end of .map

    #3. get average
    (sum_of_ratings.sum)/number_of_movies

  end #end of average_rating

  def self.highest_rated
    QueueItem.all.max_by {|item| item.rating}.movie

 #the above only gets the single highest rated movie instance, below is my unfinished attempt at getting the movie with the highest average rating.
    x = QueueItem.all.sort_by {|item| item.movie.average_rating}
  end

end #end Movie Class
