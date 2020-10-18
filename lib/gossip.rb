
require 'pry'
require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

#variables d'instance: accès que quand il y a déjà une instance de la classe.

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    # 1)création d'un array vide qui s'appelle all_gossips
    all_gossips = []
    file = CSV.read("db/gossip.csv") #on peut aussi faire CSV.read directement, mais moins bien!
    file.each do |line|
    gossip_provisoire = Gossip.new(line[0], line[1])
    all_gossips << gossip_provisoire
      end
    return all_gossips
  end

end
# binding.pry