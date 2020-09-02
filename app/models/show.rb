class Show < ActiveRecord::Base
    def self.highest_rating
        # this method should return the highest value in the ratings column. 
        #hint: if there is a minimum Active Record method, might there be a maximum method?
        Show.maximum(:rating)
    end
    
    def self.most_popular_show
        movie = Show.where(:rating == highest_rating)
        movie.take

    end
    def self.lowest_rating
        Show.minimum(:rating)
    end
    def self.least_popular_show
        self.find_by(rating: lowest_rating)
    end
    def self.ratings_sum
        counts = Show.sum(:rating)
        counts
    end
    def self.popular_shows
        movies = Show.where('rating > 5')
        movies
    end
    def self.shows_by_alphabetical_order
        orders = Show.order(:name) 
        orders
    end

    
end
