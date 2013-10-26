class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_director_movies(title)
  	#get the director from the current movie
  	movie = Movie.find_by_title(title)
  	if(movie.director.blank?)
  		return []
  	else
  		return Movie.find_all_by_director(movie.director)
  	end
  end
end
