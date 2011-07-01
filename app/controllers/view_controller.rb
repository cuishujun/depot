class ViewController < ApplicationController
  def list
    @time = Time.now
    
    @blogs = ['a','b','c','d','e']
  end

end
