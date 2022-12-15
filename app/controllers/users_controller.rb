require "redis"

class UsersController < ApplicationController
  
  redis = Redis.new
  
  def index
    UsersWorker.perform_in(2.seconds)
  end

  def show
    @name = "James"
  end
end
