class ViewController < ApplicationController
  def list
    @time = Time.now
    
    @depots = ['a','b','c','d','e']
  end

end
