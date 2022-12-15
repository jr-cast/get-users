require "redis"

class UsersController < ApplicationController
  
  redis = Redis.new
  
  def page1
    if (User.count == 0)
      User.destroy_all
      UsersWorker.perform_async
      sleep 3
    end
    @page1 = User.all.limit(5)
  end

  def page2
    @page2 = User.all.limit(5).offset(5)
  end

  def active_users
    @active_users = User.all.where(status: "Active")
  end

  def inactive_users
    @inactive_users = User.all.where(status: "Inactive")
  end

  def show
  end
end
