class Show < ActiveRecord::Base
    has_many :characters 
    has_many :actors, through: :characters
    belongs_to :network 
    def actors_list 
        # show.actors_list = an array of all actors in that show 
        # actors exist in a show by the characters they play 
        self.actors.collect {|actor| actor.full_name}
    end 

end