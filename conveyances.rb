### OBJECTS WITH INHERITANCE ###

#ABSTRACT CLASS

#class conveyances
class Conveyances
	def initialize fuel
		@fuel = fuel
	end
	def enter? quantities
		quantities <= max_people
	end
	def refuel! fuel_add
		@fuel += fuel_add
	end
end

#CONCRENT CLASSES

#class motocyrcle
class Motocyrcle < Conveyances
	def max_people
		2
	end
	def travel! kilometro
		@combustible -= kilometro
	end
end

#class car
class Car < Conveyances
	def max_people
		5
	end
	def travel! kilometer
		@fuel -= kilometer / 2
	end
end

#class bus (redefined)
class Bus < Conveyances
	def initialize
		@fuel = 100
		@passengers = 0
	end
	def max_people
		20
	end
	def enter? passengers
		passengers >= max_people
	end
	#when the bus refuel, all passengers get angry and leave
	#super calls the superclass defined  
	def refuel! fuel_add
		super
		@passengers = 0
	end
	def travel! kilometer
		@fuel -= kilometer * 2
	end
end