class CommandLineGame

  def run
    puts "Welcome to ttt-rb, are you ready to play?"
    input = gets.chomp.downcase
    start_game(input)
  end

  def start_game(input)
    unless input == 'n' || input == 'no'
      get_game_options
    else
      puts "Ok, thanks for playing!"
      abort
    end
  end

  #Game logic...

end
