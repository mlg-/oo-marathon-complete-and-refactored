class Cage
  attr_accessor :animal

  def initialize
    @animal = false
  end

  def empty?
    if @animal == false
      true
    else false
    end
  end



end
