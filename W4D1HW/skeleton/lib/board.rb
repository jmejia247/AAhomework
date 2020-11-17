class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index {|cup, i| 4.times {cup << :stone} unless i == 6 || i == 13}
  end

  def valid_move?(start_pos)
    raise "invalid starting cup" if !@cups.include?(start_pos)
    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    i = 1 
    until @cups[start_pos].empty?
      @cups[start_pos + i] << @cups[start_pos].pop unless (@cups[start_pos + 1] == @cups[6]) 
      i += 1
    end
    board.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
