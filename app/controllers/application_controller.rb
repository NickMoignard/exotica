class ApplicationController < ActionController::Base
  helper :all
  include Response
  include ExceptionHandler

  protect_from_forgery with: :exception

  # Allow http requests other than GET from Postman
  skip_before_action :verify_authenticity_token


  def get_data

      # trying not to repeat myself
      @set_times = SetTime.all
      @dancers = Dancer.all
      @stages = Stage.all
  end

  def get_todays_data

    @all_set_times = SetTime.all.order(:time)

    @until_date = DateTime.now
    until { "wednesday" => true, "thursday" => true, "friday" => true, "saturday" => true, "sunday" => true }.key?(@until_date.strftime('%A').downcase)
      @until_date + 1
    end

    @set_times = @all_set_times.first(180)

    @dancers = Dancer.all
    @stages = Stage.all
  end


end
