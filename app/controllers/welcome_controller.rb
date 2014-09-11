class WelcomeController < ApplicationController
  before_filter :authenticate_user!  #添加这行
  def index
  end
end
