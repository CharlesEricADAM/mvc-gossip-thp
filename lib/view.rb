# require 'controller'

class View
  attr_accessor :controller, :gossip

  def create_gossip
    puts "What's your name ?"
    author = gets.chomp
    puts "What's your gossip ?"
    content = gets.chomp
    return  { author: author, content: content }
  end

  def index_gossips(gossips)
    ## gossips == array_1
    gossips.each do |line|
      puts line.author + " " + line.content
    end
  end

end

