require 'gossip'
require 'view'

class Controller
  attr_accessor :gossip
  attr_reader :view

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
    # my_gossip = Gossip.new
    # my_gossip.save
  end

  def index_gossips
    # Demander au model un array qui contient tous les potins
    all_gossips = Gossip.all
    ## all_gossips == array_1
    # Demander à la view d’exécuter sa propre méthode index_gossips qui affichera tous les potins
    @view.index_gossips(all_gossips)
  end

end