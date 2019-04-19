class UsersController < ApplicationController
before_action role: :admin,   :only => [:index,:destroy]

enum role: [:user, :admin]
after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
