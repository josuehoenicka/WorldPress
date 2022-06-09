### OBJECTS WITH POLYMORPHISM AND ENCAPSULATION ###

#module pepita (bird)
module Pepita
    @energy = 1000
    @city = Tandil
    def self.energy
        @energy 
    end
    def self.city
        @city
    end
    def self.sing!
        'pri pri pri'
    end
    def self.eat_worm!
        @energy += 20
    end
    def self.fly_in_circles!
        @energy -= 10
    end
	def self.gastar_energy!(destino)
        @energy -= (@city.distance_to (destino)) / 2
    end
    def self.volar_hacia!(destino)
        self.gastar_energy!(destino)
        @city = destino
    end
    
end

#module pepo (bird)
module Pepo
    @energy = 1000

    def self.energy 
        @energy
    end

    def self.weight?
        @energy > 1100
    end

    def self.fly_in_circles!
        if self.weight?
            @energy -= 15
        else
            @energy -= 5
        end
    end

    def self.eat_birdseed! (grams)
        @energy += grams / 2
    end

    def self.make_whatever!
        self.eat_birdseed! 120
    end

end

#module norita (bird)
module Norita
    @energy = 500
    def self.energy
        @energy
    end 
    def self.fly_in_circles!
        @energy -= 30
    end  
    def self.eat_birdseed!(grams)
        @energy -= grams
    end     
    def self.make_whatever!
    end
    
end

#module buenos aires (city)
module cityBuenosAires
    def self.kilometer
      1040
    end
    def self.distance_to (city2)
      (self.kilometer - city2.kilometer).abs
    end
end

#module tandil (city)
module Tandil
    def self.kilometer
      1710
    end
    def self.distance_to (city2)
      (self.kilometer - city2.kilometer).abs
    end
end

#module mar de plata (city)
module MarDePlata
    def self.kilometer
      0
    end 
    def self.distance_to (city2)
      (self.kilometer - city2.kilometer).abs
    end
end

#module pachorra (bird's trainer)
module Pachorra 
	def self.bird=(new_bird)
		@bird = new_bird
	end	
	def self.train_bird!
		10.times {@bird.fly_in_circles!}
		@bird.eat_birdseed! 30
		5.times {@bird.fly_in_circles!}
		@bird.make_whatever!
	end
end

#module emilce (bird's trainer)
module Emilce
    def self.bird=(new_bird)
        @bird = new_bird
    end
    def self.train_bird!
        53.times {@bird.fly_in_circles!}
        @bird.eat_birdseed! 8
    end
end