require 'sinatra/base'
require 'torquebox'
require 'active_support'

class SinatraCache < Sinatra::Base

  set :cache, ActiveSupport::Cache::TorqueBoxStore.new

  get '/time' do
    settings.cache.write "now", Time.now
  end

  get '/' do
    "Hello world!\nCache contains:\n#{settings.cache.read("now")}"
  end
end
