module Tectonics
  class PlateCollision
    attr_accessor :id, :wx, :wy, :crust

    def initialize(i, x, y, crust)
      @id = i
      @wx = x
      @wy = y
      @crust = crust
    end
  end
end