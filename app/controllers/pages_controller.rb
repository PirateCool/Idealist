class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]


  def home2
    @today = Date.today
  end
  def team
    @members = ["Bob", "Romain", "Seb"]
  end
  def join_us
    render plain: "Send us a mail"
  end


end
