require 'sinatra/base'
require 'torquebox-messaging'

class MessageSender < Sinatra::Base

  get '/queue_nick' do
    queue = TorqueBox::Messaging::Queue.new('/queues/nick_queue')
    queue.publish "Send a message to Nick's Queue with Date of #{Time.now} in it"
    "Sent a message to the queue #{Time.now}"
  end

  get '/queue_second' do
    queue = TorqueBox::Messaging::Queue.new('/queues/second_queue')
    queue.publish "Send a message to the second Queue with Date of #{Time.now} in it"
    "Sent a message to the queue #{Time.now}"
  end

  get '/topic_nick' do
    topic = TorqueBox::Messaging::Topic.new('/topics/nick_topic')
    topic.publish "Sent a message to the Nick Topic with a Date of #{Time.now} in it"
    "Sent a message to the topic #{Time.now}"
  end

  get '/topic_second' do
    topic = TorqueBox::Messaging::Topic.new('/topics/second_topic')
    topic.publish "Sent a message to the Second Topic with a Date of #{Time.now} in it"
    "Sent a message to the topic #{Time.now}"
  end

end
