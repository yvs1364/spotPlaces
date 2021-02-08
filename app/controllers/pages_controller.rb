class PagesController < ApplicationController
  def home
    @user = User.all
  end

  def spots; end
end
