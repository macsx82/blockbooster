class HomeController < ApplicationController
  layout "application"
    def index
      @day = Time.now.strftime("%d")
      @month = Time.now.strftime("%b")
    end
end
