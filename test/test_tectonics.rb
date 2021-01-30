#require 'helper'
#require 'province_engine'

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
