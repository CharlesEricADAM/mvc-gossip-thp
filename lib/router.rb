require 'controller'

class Router
  attr_accessor :controller

  def initialize
    @controller = Controller.new
  end
  
  def perform

    puts "BIENVENUE DANS GOSSIP PROJECT"

    while true

    puts "What do you want to do ?"
    puts "1- Create a gossip"
    puts "2- Display gossip list"
    puts "4- Quit app"
    params = gets.chomp.to_i

      case params
      when 1
        puts "You create a gossip"
        @controller.create_gossip

      when 2
        puts "Display gossip list"
        @controller.index_gossips
        
      when 4
        puts "You quit the app"
        break

      else 
        puts "Error, no choice"
      end
    end
  
  end

end
