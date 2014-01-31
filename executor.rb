require 'redis'
require_relative 'text-adventure/lib/bootstrap'
require_relative 'text-adventure/lib/game'

def setup_game
  b = Bootstrap.new 'text-adventure/data/epic_adventure/locations.yml', 'text-adventure/data/epic_adventure/messages.yml'
  @game = Game.new(b)
end

def wait_for_messages
  @from_redis ||= Redis.new
  loop do
    msg = @from_redis.brpop("to_game").last
    puts "received #{msg}"
    send_reply(execute_message(msg))
  end
end

def send_reply(message)
  puts "sending #{message}"
  (@to_redis ||= Redis.new).lpush("to_user",message)
end

def execute_message(message)
  @game.engine.eval_msg(message)
end

if __FILE__ == $0
  setup_game
  wait_for_messages
end