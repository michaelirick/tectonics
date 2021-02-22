require 'helper'
require 'tectonics'

class TestTectonics < Minitest::Test

  def test_test
    lithosphere = Tectonics::Lithosphere.new(
      map_side_length: 256,
      sea_level: 0.5,
      erosion_period: 5,
      folding_ratio: 0.5, # idk
      aggr_ratio_abs: 5000, # idk
      aggr_ratio_rel: 0.5, # idk
      cycle_count: 5 # not sure
    )
    lithosphere.create_plates 6
    lithosphere.write_png
    lithosphere.update
    lithosphere.write_png

    assert(true, true)
  end

end

#class TestProvinceEngine < Minitest::Test

#  def test_version
#    version = ProvinceEngine.const_get('VERSION')

#    assert(!version.empty?, 'should have a VERSION constant')
#  end

  # def test_test
  #   map = ProvinceEngine::Map.new 'seed_26690', world_directory: '../country-capital/public'
  #   map.generate province_size: 150
  #   map.save
  #   assert(true, 'true')
  # end

#  def test_random_color
#    map =  ProvinceEngine::Map.new 'seed_26690', world_directory: '../country-capital/public'
#    colors = []
#    10000.times {
#      s = Time.now
#      colors << map.random_color
#        # puts (Time.now - s)
#    }
#    assert(colors.count == colors.uniq.count, 'colors not unique')
#  end
#end
