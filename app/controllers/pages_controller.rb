class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def about
    @title = "About"
  end

  def signin
    @title = "Sign in"
  end
end
