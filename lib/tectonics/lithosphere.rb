module Tectonics
  class Lithosphere
    attr_accessor :hmap, :plates, :collisions, :subductions, :step

    # map_side_length
    # sea_level: 0.0 to 1.0
    # erosion_period
    # folding_ratio
    # aggr_ratio_abs
    # aggr_ratio_rel
    # cycle_count - number of times to fill lithosphere with new plates
    def initialize(options={})
      reset
    end

    def reset
      @step = 0
    end

    def update
      @step += 1
    end

    def create_plates(number_of_plates)
    end

    def write_png
    end
  end
end