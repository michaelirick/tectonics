module Tectonics
  class Plate
    attr_accessor *%i[
      map
      age
      width
      height
      left
      top
      cx
      cy
      mass
      velocity
      vx
      vy
      dx
      dy
      segments
      segment
    ]

    def add_crust_by_collision(x, y, z, t)
    end

    def add_crust_by_subduction(x, y, z, t, dx, dy)
    end

    def aggregate_crust(plate, wx, wy)
    end

    def set_crust(x, y, z, t)
    end

    def apply_friction(deforming_mass)
    end

    def collide(plate, wx, wy, collision_mass)
    end

    def move
    end

    def continent_area(wx, wy)
    end

    def reset_segments
    end
  end
end