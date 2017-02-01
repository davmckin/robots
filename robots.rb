class Robot

  attr_accessor :name, :height
  def initialize(name, height = 10)
    @name = name
    @height = height
  end

  def say_hi
    puts "Hi"
  end

  def say_name
    puts "My name is #{name}"
  end
end
class Bendingunit < Robot

  def Bend(object_to_bend)
    puts "Bend #{object_to_bend}"
  end
end

class ActorUnit < Robot
    def change_name(new_name)
      @name = new_name
    end
end

roboclass = []

our_class = ["Rob", "David", "Nancy", "Kalea", "Laura", "Dave", "Demetra", "Kendrick", "Phil", "Ben", "Michael", "Miguel"]
our_class.each do |robo|
  roboclass << Robot.new(robo)
end

randobo = [Robot, Bendingunit, ActorUnit]

roboclass = our_class.collect { |assign|
   randobo.sample.new(assign)}
   puts roboclass.inspect
