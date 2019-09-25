class Viewer
    attr_accessor :username

    @@all = []

    def initialize(username)
      @username = username
      @@all << self
    end

    def queue_items 
      QueueItem.all.select do |queue_item|
        queue_item.viewer == self 
      end 
    end 

    def queue_movies 
      queue_items.map do |queue_item|
        queue_item.movie 
      end 
    end 

    def add_movie_to_queue(movie)
      QueueItem.new(movie, self)
    end 

    # def rate_movie(movie, rating)
    #   queue_items.each do |queue_item|
    #     if queue_item.rating 
    #       queue_item.rating == rating 
    #     else 
    #       QueueItem.new(movie, self, rating)
    #     end 
    #   end 
    # end 

        def rate_movie(movie, rating)
          if rating >= 1 && rating <= 5 
            queue_items.each do |queue_item|
              if queue_item.rating
                queue_item.rating == rating 
              else 
                QueueItem.new(movie, self, rating)
              end 
            end 
          end 
        end 

    def self.all
      @@all
    end


    
  end #end of class 
