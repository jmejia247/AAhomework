class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize(sequence_length = 1)
    @sequence_length = sequence_length
    @game_over = false
    @seq = Array.new
  end

  def play
    while !game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    p "You have controlledyour fear. Now, release your anger. Only your hatred can destroy me. what color do you see?"
    user_guessed_color = gets.chomp
    if seq.include?(user_guessed_color) 
      play
    else
      @game_over = true
      play
    end

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "Be careful not to choke on your aspirations"
  end

  def game_over_message
    p "You are as clumsy as you are stupid"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end

p game1 = Simon.new
