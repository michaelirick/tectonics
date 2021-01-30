module Tectonics 
  if ENV['RAILS_ENV'] == 'development'
    VERSION = rand(0..1000) # for dev
  else
    VERSION = '0.1.1'
  end
end
