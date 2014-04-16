class IndexController < ApplicationController
  before_action do
    case request.user_agent
    when /iPad/i
      puts "iPad"
      request.variant = :tablet
    when /iPhone/i
      puts "iPhone"
      request.variant = :mobile
    end
  end

  def index
    puts "*** #{request.user_agent} ***"
  end
end
