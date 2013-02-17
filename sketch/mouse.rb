# Sketch2

class Sketch2 < Processing::App

  def setup
    
  end
  
  def draw
    size = rand(75)
    background 200 
    fill  rand(255), rand(255), rand(255)
    if mouse_x < 240
      x,y = mouse_x, mouse_y
      ellipse x, y, size, size
    elsif
      x = mouse_x - size / 2 
      y = mouse_y - size / 2 
      rect x, y, size, size
    end
  end
  
end

Sketch2.new :title => "Sketch2", :width => 640, :height => 480
