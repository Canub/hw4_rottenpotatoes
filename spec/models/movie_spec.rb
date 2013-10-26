require 'spec_helper'
#a model method in the Movie model to find movies whose director matches that of the current movie.

describe Movie do
	describe "Find Movies With Same Director" do
	 	it "should search for movies whose director matches that of the current movie" do
			currentM = FactoryGirl.create(:movie, {:director => "dude", :title => "m1"})
			sameDirM = FactoryGirl.create(:movie, {:director => "dude", :title => "m2"})
			difDirM = FactoryGirl.create(:movie, :title => "m3")
			list = Movie.find_director_movies("m1")
			list.should_not be_empty
			list.each {|movie| movie.director.should == "dude"}
		end
	end
end
