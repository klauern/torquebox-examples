require 'sinatra/base'
require 'active_support'
require 'active_support/cache/torque_box_store'

class SinatraCache < Sinatra::Base

  set :cache, ActiveSupport::Cache::TorqueBoxStore.new

  get '/time' do
    settings.cache.write "now", Time.now
  end


  get '/' do
    "Hello world!\nCache contains:\n#{settings.cache.read("now")}"
  end
end
