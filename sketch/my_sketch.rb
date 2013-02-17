# My Sketch

class MySketch < Processing::App

  def setup
    @w, @h = 75, 74
    @x,@y = 10, 10
    @offset = 10
    @margin = 5
  end
  
  def draw
    fill rand(255), rand(255), rand(255)
    rect @x, @offset, @w, @h
    rect @x, @y, @w, @h
    @x += 2
    @y += 2

    if @x > 640
      @x = 0
    end

    if @x == 640
      @offset = @h + @margin + @offset 
      stroke rand(255), rand(255), rand(255)
    elsif @offset > 480
      @offset = 1
    end

    if @y > 480
      @y = 0
    end
    
  end
  
end

MySketch.new :title => "My Sketch", :width => 640, :height => 480
