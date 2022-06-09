### OBJECTS WITH CLASS AND INSTANCES ###

#CONCRENT CLASSES

#class zombie
class Zombie
	def initialize
		@health = 100	
	end
	def health
		@health
	end
	def scream
		return "agrrrg!"
	end
	def can_it_run?
		false
	end
	def lifeless?
		@health === 0
	end
	def receive_damage! damage
		if @health >= damage * 2
			@health -= damage * 2
		else
			@health = 0
		end
	end
end

#instances to class zombie
bouba = Zombie.new
kiki = Zombie.new

#class superzombies
class SuperZombie
	def initialize health_inicial
		@health = health_inicial
	end
	def health
		@health
	end
	def scream 
		return "agrrrg!"
	end
	def can_it_run?
		true
	end
	def lifeless?
		@health === 0 
	end
	def regenerate!
		@health = 100
	end
	def receive_damage! danger
		@health >= [@health - danger * 3, 0].max
	end
end

#class survivor
class survivor
	def initialize
		@energy = 1000
	end
	def energy
		@energy
	end
	def drink!
		@energy *= @energy * 0.25
	end
	def massive_attack! hikers
		hikers.each { |hikers| attack! hikers, 15 }
		@energy -= @energy / 2
	end
	def attack! zombie, danger
		zombie.receive_damage! danger
	end
end

#instances to class survivor
juliana = survivor.new
anastacia = survivor.new

#class ally
class Ally
	def initialize
		@energy = 500
	end
	def energy
		@energy
	end
	def drink!
		@energy += @energy * 0.10
	end
	def massive_attack! zombies
		zombies.each { |zombies| attack! zombie, 20 }
		@energy -= @energy / 2
	end
	def attack! zombie, danger
		zombie.receive_damage! danger
		@energy -= @energy * 0.05
	end
end