class UsersController < ApplicationController

  def profile
    @name = User.first.email
  end

end
