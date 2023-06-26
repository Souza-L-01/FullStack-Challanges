# class OrangeTree
#    attr_reader :age, :height, :fruit_count

#   def initialize
#     @age = 0
#     @height = 0
#     @fruits = 0
#     @dead = false
#   end
#   # TODO: Implement all the specs defined in the README.md :)

#   def one_year_passes!
#     @age += 1
#     @height +=1 unless @age >= 10

#     if @age > 5 && @age <=10
#       @fruit_count = 100
#       elsif @age >= 10
#         @fruit_count == 200
#       else
#         @fruit_count == 0
#       end

#       if @age >= 50
#         @dead = rand(100) < 50
#       end
      
#       if age  = 100
#         @dead == true
#       end

#       @fruit_count = 0 if @dead
#       end

#       def @dead
#         @dead
#       end

#       def pick_a_fruit!
#         if fruit_count > 0
#           fruit_count -= 1
#         else
#         end
#     end
#   end
# end



class OrangeTree
  attr_reader :age, :height, :fruit_count

  def initialize
    @age = 0
    @height = 0
    @fruit_count = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    @height = age <= 10 ? age : 10
    if age > 5 && age <= 10
      @fruit_count = 100
    elsif age > 10 && age <= 15
      @fruit_count = 200
    else
      @fruit_count = 0
    end
    if age > 50
      @dead = rand(100) < age - 50
    end
    if age >= 100
      @dead = true
    end
    @fruit_count = 0 if @dead
  end

  def dead?
    @dead
  end

  def pick_a_fruit!
    if @fruit_count > 0
      @fruit_count -= 1
    else
    end
  end
end
