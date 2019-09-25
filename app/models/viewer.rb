class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |item|
      item.viewer == self
    end
  end

  def queue_movies
    self.queue_items.map do |item| #call on helper method 'queue_items'
      item.movie
    end
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie)     #rating defaults to 'nil'
  end

  def rate_movie(film, score)

    #call on helper method 'queue_items' and checks MY movies against the movie I'm trying to rate (argument 'film')
    my_movies = self.queue_items.select {|item| item.movie == film}
  
    if my_movies != [] #if true, then this movie is in your queue already

        #assume there's no duplicate queue item for any given user, the array will only contain 1 element of queue instance
        my_movies[0].rating = score
    else
        QueueItem.new(self, film, score)
        #can't call add_movie_to_queue helper method because it doesn't accept a rating argument
    end #end if statement
  end #end rate_movie()

  
end #end Viewer Class
