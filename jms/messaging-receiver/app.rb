require 'sinatra/base'
require 'torquebox-messaging'

class MessageReceiver < Sinatra::Base

  get '/topic_nick' do
    topic = TorqueBox::Messaging::Topic.new('/topics/nick_topic')
    topic.receive
  end

  get '/topic_second' do
    topic = TorqueBox::Messaging::Topic.new('/topics/nick_topic')
    topic.receive
  end

  get '/queue_nick' do
    queue = TorqueBox::Messaging::Queue.new('/queues/nick_queue')
    queue.receive
  end

  get '/queue_second' do
    queue = TorqueBox::Messaging::Queue.new('/queues/second_queue')
    queue.receive
  end
  
end
