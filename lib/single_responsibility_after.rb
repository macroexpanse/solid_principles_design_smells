class CommandLineGame

  def initialize(cli)
    @cli = cli
  end

  def run
    @cli.output_message("GREETING")
    input = @cli.accept_input
    start_game(input)
  end

  def start_game(input)
    unless input == 'n' || input == 'no'
      get_game_options
    else
      @cli.output_message("FAREWELL")
      abort
    end
  end

   #Game logic...
end

class CommandLineInterface
  GREETING = "Welcome to ttt-rb, are you ready to play?"
  FAREWELL = "Ok, thanks for playing!"

  def output_message(message_name)
    puts self.class.const_get(message_name)
  end

  def accept_input
    gets.chomp.downcase
  end

end
