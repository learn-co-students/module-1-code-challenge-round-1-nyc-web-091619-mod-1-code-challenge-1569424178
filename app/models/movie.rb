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


  #look through all the QueueItem instances
  #find all queueitems that belong to the specific movie
  def queue_items
    QueueItem.all.each do |queueitem|
      queueitem.movie == movie
      binding.pry
    end
  end

#look through the viewer's queue to 
#return an array of movies
  def queue_movies
    QueueItem.all.each do |queueitem|
      queueitem.viewer == movie
      binding.pry
    end
  end


  #add movie instance to viewers queue
  #go into 
  def add_movie_to_queue(movie)
    Viewer.all 
  end




  #returns the instance of Movie 
  #with the highest average rating
  def self.highest_rated
    Movie.all.rating.average do |movie|
      movie.rating
    end
  end



end #end of Movie class
