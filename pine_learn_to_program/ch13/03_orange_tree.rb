class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
  end
  def one_year_passes
    @age += 1
    grow_taller(@age)
    grow_fruits(@age)
    puts "one year has passed"
  end

  def height
    @height
  end

  def age
    @age
  end

  def oranges
    @oranges
  end

  def pick
    if @oranges == 0
      puts "there are no oranges to pick"
    else
      @oranges -= 1
      puts "you picked an orange"
    end
  end

  def status
    return "age = #{@age}, oranges = #{@oranges}, height = #{@height}"
  end

  private

  def grow_taller age
    if @age <= 10
      @height += 1
    end
  end

  def grow_fruits age
    if @age <= 10
      @oranges = 10 * @age
    else
    @oranges = 0
    end
  end

end

# method to issue calls to OrangeTree instance tree based on user string input
def dispatch input, tree
  if input == "status"
    puts tree.status
  end
  if input == "one year passes"
    tree.one_year_passes
  end
  if input == "pick"
    tree.pick
  end
end

# method to create a new tree, and ask the user to "interact" with it
def init
  tree = OrangeTree.new

  input = ""

  while input != "bye"
    print "what is your command? Chose from 'status', 'one year passes', 'pick', 'bye'. >> "
    input = gets.chomp
    dispatch input, tree
  end
end

# let's go!
init
