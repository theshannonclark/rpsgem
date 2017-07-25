require_relative "rpsgem/version"
require_relative "rpsgem/rockpaperscissors"

module Rpsgem
  def self.play
    puts "Welcome to rock, paper, scissors!"

    answer = 'y'
    loop do
      print "Start in single-player mode (y/n)? "
      answer = gets.strip.downcase

      break if answer == 'y' or answer == 'n'
    end

    single_player = (answer != 'n')

    rps = RockPaperScissors.new(single_player)
    rps.play
  end
end
