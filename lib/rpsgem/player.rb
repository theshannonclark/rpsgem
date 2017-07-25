module Rpsgem
  class Player

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def pick_move
      print @name + ", enter move (rock, paper, scissors, quit) > "
      return gets.strip.downcase
    end
  end

  class AIPlayer < Player
    def pick_move
      ['rock', 'paper', 'scissors'].sample
    end
  end
end