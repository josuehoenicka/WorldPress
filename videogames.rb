#module videogame library
module  Videogames
    @games = [CarlosDuty, TimbaElLeon, Metroide]
    @points = 0
    def self.games
        @games
    end
    def self.points
        @points
    end
    def self.add_game! a_game
        @game.push a_game
        @points += 150
    end
    def self.delete_game! a_game
        @game.delete a_game
    end
    def self.complete?
        @points > 1000 && @games.size > 5
    end
    def self.game_recommended? a_game
        !(@games.include? a_game) && a_game.violent?
    end
    def self.games_violents
        games_violents = games.select { |games_violents| games_violents.violent? }
    end
    def self.game_harder_than(a_difficulty)
        game_harder_than = @games.find { |a_game| a_game.a_difficulty > a_difficulty }
    end
    def self.too_violent?
        @games.all? { |games| games.violent? }
    end
    def self.too_difficulty?
        @games.any { |games| games.a_difficulty > 25 }
    end
    def self.a_difficulty_violenta
        games_violents.map { |games| games.a_difficulty }
    end
    def self.games_violents
        games_violents = @games.select { |games_violents| games_violents.violent? }
    end
    def self.average_violence
        games_violents.sum { |games_sum| games_sum.a_difficulty } / games_violents.count
    end
    def self.play_all!
        @games.each { |play_all| play_all.play! 5 }
    end
end

#module carlos duty (videogame)
module CarlosDuty
    @achievements=0    
    def self.a_difficulty
        30 - @achievements * 0.5
    end  
    def self.play!(a_time)
       if 2 <= a_time
            @achievements += 1
       end
    end    
    def self.violent?
       true
    end 
end

#module timba el leon (videogame)
module TimbaElLeon
     @a_difficulty = 25   
    def self.a_difficulty
       @a_difficulty
    end   
    def self.play! (a_time)
       @a_difficulty += a_time
    end   
    def self.violent?
       false
    end     
end
   
#module metroide (videogame)
module Metroide
    @spatial_level = 3     
    def self.a_difficulty
        100
    end   
    def self.violent?
        @spatial_level > 5
    end   
    def self.play! a_time
        @spatial_level += 1
    end     
end