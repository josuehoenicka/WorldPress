#module manuelita (turtle)
module Manuelita
    @energy = 100
    @city = Pehuajo
    @favorite_mineral = Malaquita
    @go_to = Paris
    def self.energy
        @energy
    end 
    def self.city
        @city
    end 
    def self.favorite_mineral=(mineral)
        @favorite_mineral = mineral
    end 
    def self.favorite_mineral
        @favorite_mineral
    end  
    def self.go_to=(city)
        @go_to = city
    end
end

### ATTRIBUTES ###
attributes = %w(
    energy
    city
    favorite_mineral
    go_to
)

attributes_with_getter = %w(
    energy
    favorite_mineral
    city
)

attributes_with_setter = %w(
    go_to
    favorite_mineral
)