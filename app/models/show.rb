require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    self.all.maximum("rating")
  end

  def self.most_popular_show
    self.where(:rating => highest_rating).first
  end

  def self.lowest_rating
     self.all.minimum("rating")
  end

  def self.least_popular_show
    self.where(:rating => lowest_rating).first
  end

  def self.ratings_sum
    self.all.sum("rating")
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
     Show.all.order(:name)
  end
end
