require 'bundler'
require 'pry' 

class joueur
  attr_accessor :name, :life_points
puts "presentation officiel de notre duel :"

joueur.each { |joueur| joueur.show_state }
    



  def initialize(name)
    @name = name
    @life_points = 10
  end

  def compute_damage
    rand(1..6)
  end
  
def attacks(joueur) 
  puts "Le joueur #{@name} attaque le joueur #{joueur.name}"
    damage = compute_damage
    joueur.gets_damage(damage)
    puts "Il lui inflige #{damage} points de dommages."
    self.show_state
end 

def gets_damage(damage)
  @life_points - damage
  @life_points = 0 if @life_points <= 0
      puts "#{@name} est mort" if @life_points == 0
end

  def show_state
    puts "#{@name} a #{@life_points} points de vie."
    
  
  end
end



