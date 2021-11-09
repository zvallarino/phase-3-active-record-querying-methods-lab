class Show < ActiveRecord::Base

def self.highest_rating
  self.order(:rating).last.rating
end 

def self.most_popular_show
  self.order(:rating).last
end

def self.lowest_rating
  self.order(:rating).first.rating
end

def self.least_popular_show
  self.order(:rating).first
end

def self.ratings_sum
  self.sum(:rating)
end

def self.popular_shows
  self.where("rating > ?", 5)
end


def self.shows_by_alphabetical_order
  self.order(:name)
end 




end