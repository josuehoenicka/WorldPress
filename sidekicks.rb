#module inodoro (gaucho)
module Inodoro
    @caffeine_in_blood = 90
    @sidekick   
    def self.caffeine_in_blood
        @caffeine_in_blood
    end   
    def self.drink_mate!
        @caffeine_in_blood += 10
        @sidekick.receive_mate!
    end    
    def self.sidekick
        @sidekick
    end    
    def self.sidekick=(new_sidekick)
        @sidekick = new_sidekick
    end
end

#module eugolia (inodoro's friendly)
module Eulogia
    @angry = false
    def self.angry?
        @angry
    end   
    def self.receive_mate!
        @angry = true
    end  
end

#module mendieta (inodoro's dog)
module Mendieta
    @wants_to_talk = 5
    def self.wants_to_talk
        @wants_to_talk
    end   
    def self.wants_to_talk=(number)
        @wants_to_talk = number
    end
    def self.receive_mate!
        @wants_to_talk = 0
    end
end