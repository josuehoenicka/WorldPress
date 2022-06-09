#module fito
module Fito
  @happiness = 100
 	def self.friend=(a_friend)
      @friend = a_friend
 	end
 	def self.is_happy_like_his_friend?
      @friend.happiness > 105
 	end
end

#module gervasio (juli's grandfather)
module GrandfatherGervasio
  def self.friend=(a_grandchild)
      @grandchild = a_grandchild
  end
  def self.alimentar_grandchild!
      @grandchild.eat! 2000
      @grandchild.eat! 1000
      @grandchild.eat! 2000
  end
end

#module juli (fito's friend)
module Juli
end

### TEST IN CONSOLE 
#if Juli is happy, fito is happy too
Fito.friend=Juli
GrandfatherGervasio.grandchild=Juli
3.times {GrandfatherGervasio.alimentar_grandchild!}
  