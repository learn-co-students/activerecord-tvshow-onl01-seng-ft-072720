class Show < ActiveRecord::Base
    def highest_rating
        # this method should return the highest value in the ratings column. 
        #hint: if there is a minimum Active Record method, might there be a maximum method?
        self.ratings.maximum
    end

    def most_popular_show
        #
    end
    def lowest_rating
        #
    end
    def least_popular_show
        #
    end
    def ratings_sum
        #
    end
    def popular_shows
        #
    end
    def shows_by_alphabetical_order
        #
    end

end
